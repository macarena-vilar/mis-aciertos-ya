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
        $gameDate = "$gameY-$gameM-$gameD";

        $gameFactory = $this->container->get("gameFactory");
        $gameList = $gameFactory->findGamesByDate($gameId,$gameDate);
        if ( $gameList == null || count($gameList) == 0 )
            throw new \Exception("Sin datos disponibles");

        $rowList = array();
    	foreach ( $gameList as $drawNr ) {
            $rowList[] = $gameFactory->getGameResults($gameId,$drawNr,$winArr);
    	}

    	$data = array(
			"gameDate" => "$gameD/$gameM/$gameY",
    		"rowList"  => $rowList
    	);

    	return $this->render ( 'AppBundle:Results:game-results.html.twig', $data );    	 
    }
}
