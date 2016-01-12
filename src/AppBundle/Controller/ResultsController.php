<?php

namespace AppBundle\Controller;

use FOS\RestBundle\Controller\FOSRestController;
use FOS\RestBundle\Controller\Annotations\Route;
use AppBundle\Util\GameFactory;

class ResultsController extends FOSRestController
{
    /**
     * @Route("/api/v1/hits/{gameId}/{gameD}/{gameM}/{gameY}")
     */
    public function getHitsAction($gameId,$gameD,$gameM,$gameY) {
    	$winArr = $this->getRequest()->get("winningNr");
        /*
		$repo = $this->getDoctrine()
					 ->getRepository('AppBundle:FspInpHeader');
    	*/
        $gameFactory = $this->container->get("gameFactory");
        $gameDate = "$gameY-$gameM-$gameD";
        $gameList = $gameFactory->findGamesByDate($gameId,$gameDate);
        if ( $gameList == null || count($gameList) == 0 )
            throw new \Exception("Sin datos disponibles");

    	
        /*
    	$restClient = $this->container->get('ci.restclient');
    	$urlBase = $this->container->getParameter("winnerInfo.rest.url");
    	$rowList =[];
    	$headers = [CURLOPT_HTTPHEADER => $this->container->getParameter("rest.headers")];
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
    	*/
/*
        $data  = $game->loadFromWS($gameList,$restClient,$urlBase,$headers,$winArr,"$gameD/$gameM/$gameY");
        */
    	return $this->render ( 'AppBundle:Results:game-results.html.twig', $data );    	 
    }
}
