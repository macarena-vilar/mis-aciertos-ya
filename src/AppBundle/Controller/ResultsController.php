<?php

namespace AppBundle\Controller;

use FOS\RestBundle\Controller\FOSRestController;
use FOS\RestBundle\Controller\Annotations\Route;
use Symfony\Component\HttpFoundation\Response;
use AppBundle\Util\GameFactory;

class ResultsController extends FOSRestController
{
    /**
     * @Route("/api/v1/hits/{gameId}/{gameD}/{gameM}/{gameY}")
     */
    public function getHitsAction($gameId,$gameD,$gameM,$gameY) {
    	$winArr = $this->getRequest()->get("winningNr");
		$repo = $this->getDoctrine()
					 ->getRepository('AppBundle:FspInpHeader');
		$divRepo = $this->getDoctrine()
					    ->getRepository('AppBundle:FspOutDivisions');

    	$gameDate = "$gameY-$gameM-$gameD";
    	$gameList = $repo->findGamesByDate($gameId,$gameDate);
    	if ( $gameList == null || count($gameList) == 0 )
    		throw new \Exception("Sin datos disponibles");
    	
    	$game = GameFactory::newGameInstance($gameId);
    	
    	$restClient = $this->container->get('ci.restclient');
    	$urlBase = $this->container->getParameter("winnerInfo.rest.url");
    	$rowList =[];
    	$headers = [CURLOPT_HTTPHEADER=>$this->container->getParameter("rest.headers")];
    	foreach ( $gameList as $gameNr ) {
    		$url = $urlBase . "?game-name=" . $game->getGameName() . "&draw=$gameNr";
    		$game->initFromJson($restClient->get($url,$headers)->getContent());
    		$rowList[] = array(
    				     "drawNr"   => $gameNr,
    				     "gameHits" => $game->getGameResults($winArr));
    	}

    	$data = array(
			"gameDate" => "$gameD/$gameM/$gameY",
    		"rowList"  => $rowList
    	);
    	
    	return $this->render ( 'AppBundle:Results:game-results.html.twig', $data );    	 
    }
}
