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
    	$gameDate = "$gameY-$gameM-$gameD";
    	$gameList = $repo->findGamesByDate($gameId,$gameDate);
    	$game = GameFactory::newGameInstance($gameId);
    	
    	$restClient = $this->container->get('ci.restclient');
    	$urlBase = $this->container->getParameter("winnerInfo.rest.url");
    	$rowList = array();
    	foreach ( $gameList as $gameD ) {
    		$url = $urlBase . "?game-name=" . $game->getGameName() . "&draw=$gameD";
    		$game->initFromJson($restClient->get($url)->getContent());
    		$rowList[] = $game->getGameResults($winArr);
    	}
    	
    	print_r($rowList);
    	
    	$retVal = array("gameId"=>$gameId,"winArr"=>$winArr,"gameDate"=>$gameDate);
    	return new Response(json_encode($retVal));

    }
}
