<?php

namespace AppBundle\Util;

use Symfony\Component\DependencyInjection\ContainerInterface as Container;
use Doctrine\ORM\EntityManager;

class GameFactory {
	// Forced!
	// In a new incarnation, must be dynamic	
	private $_gameList = array(
			"AppBundle\Util\GameHelperPremio",
			"AppBundle\Util\GameHelperElegi2",
			"AppBundle\Util\GameHelperSuper"
	);
	
	public static function getGameList() {
		return array(
			"AppBundle\Util\GameHelperPremio",
			"AppBundle\Util\GameHelperElegi2",
			"AppBundle\Util\GameHelperSuper"
		);
	}
	
	public static function getGameUIList() {
		$retVal = array();
		foreach ( GameFactory::getGameList() as $game ) {
			$gameObj = new $game;
			$retVal[$gameObj->getGameId()] = $gameObj->getGameUI(); 
		}
		return $retVal;
	}

	public static function newGameInstance($gameId) {
		// Forced!
		// In a new incarnation, must be dynamic
		if ( $gameId === "E" )
			return new GameHelperElegi2();
		if ( $gameId === "P" )
			return new GameHelperPremio();
		if ( $gameId === "S" )
			return new GameHelperSuper();
		
		return null;
	}

	public static function newGameInstanceByName($gameName) {
		// Forced!
		// In a new incarnation, must be dynamic
		if ( strtoupper($gameName) === "ELEGIDOS" ||
			 strtoupper($gameName) === "ELEGI2")
			return new GameHelperElegi2();
		if ( strtoupper($gameName) === "PREMIO" ||
			 strtoupper($gameName) === "PREM10")
			return new GameHelperPremio();
		if ( strtoupper($gameName) === "SUPER" ||
			 strtoupper($gameName) === "SUPERLOTTO")
			return new GameHelperSuper();
		
		return null;
	}

	private $container;
	private $em;

    public function __construct(Container $container,EntityManager $em) {
        $this->container = $container;
        $this->em = $em;
    }

    private function loadFromWS($gameId,$drawNr){
        $restClient = $this->container->get('ci.restclient');
        $urlBase = $this->container->getParameter("winnerInfo.rest.url");
        $headers = [CURLOPT_HTTPHEADER => $this->container->getParameter("rest.headers")];
        $game = GameFactory::newGameInstance($gameId);
		$url = $urlBase . "?game-name=" . $game->getGameName() . "&draw=$drawNr";
        return $restClient->get($url,$headers)->getContent();
    }

    private $itLimit  = 7;

    public function findGamesByDate($gameId,$gameDate) {
        $game = GameFactory::newGameInstance($gameId);
        $repo = $this->em->getRepository('AppBundle:FspInpHeader');
        $gameList = $repo->findGamesByDate($gameId, $gameDate);

        if ( count($gameList)==0 && $game->refreshFromWS() ) {
	    	$startN = $repo->getLastGame($gameId)+1;
	    	if ( $startN <= $game->getMinStart() )
	    		$startN = $game->getMinStart();

	    	$it = 0;
        	while( true ) {
        		$jsData = $this->loadFromWS($gameId,$startN);

    			if ( ($gameData = $game->basicInitFromJson($jsData)) !== null )
    				$repo->newHeader($gameId,$gameData["drawNr"],$gameData["drawDate"]);
    			else 
    				$it++;

    			$startN++;
    			if ( $it >= $this->itLimit )
    				break;
    		}

    		// another chance
        	$gameList = $repo->findGamesByDate($gameId, $gameDate);
        }
        return $gameList;
    }


}
