<?php

namespace AppBundle\Controller;

use FOS\RestBundle\Controller\FOSRestController;
use FOS\RestBundle\Controller\Annotations\Route;
use AppBundle\Util\GameFactory;
use Symfony\Component\HttpFoundation\Request;

class ResultsController extends FOSRestController
{
    /**
     * @Route("/api/v1/hitsByDate/{gameId}/{gameD}/{gameM}/{gameY}")
     */
    public function getHitsByDateAction(Request $request,$gameId,$gameD,$gameM,$gameY) {

        $winArr   = $request->get("winningNr");
        $gameDate = "$gameY-$gameM-$gameD";
        $gameBet  = $request->get("bet");

        $repo = $this->getDoctrine()->getRepository('AppBundle:TblGames');

        $gameList = $repo->getGamesByDate($gameId,$gameDate);

        if ( $gameList != null && !is_array($gameList) ) {
            // It's an error/warning message
            $data = array ( "msg" => $gameList );
            return $this->render ( 'AppBundle:Results:float-msg.html.twig', $data );      
        }

        if ( $gameList == null || count($gameList) == 0 )
            throw new \Exception("Sin datos disponibles");

        $rowList = array();
    	foreach ( $gameList as $game ) {
            $rowList[] = array( 
                "drawNr"   => $game->getDrawNr(),
                "gameHits" => $game->getResults($winArr,$gameBet),
            );
            //$rowList[] = //$gameFactory->getGameResults($gameId,$drawNr,$winArr);
    	}

    	$data = array(
			"gameDate" => "$gameD/$gameM/$gameY",
    		"rowList"  => $rowList,
            "nrWidth"  => $game->getGameUI()["gameNrWidth"],
    	);

    	return $this->render ( 'AppBundle:Results:game-results.html.twig', $data );    	 
    }

    /**
     * @Route("/api/v1/hitsByNr/{gameId}/{drawNr}")
     */
    public function getHitsByNrAction(Request $request,$gameId,$drawNr) {

        $winArr   = $request->get("winningNr");
        $gameBet  = $request->get("bet");

        $repo = $this->getDoctrine()->getRepository('AppBundle:TblGames');

        $game = $repo->getGameByNr($gameId,$drawNr);

        if ( $game == null )
            throw new \Exception("Sin datos disponibles");

        $rowList[] = array( 
            "drawNr"   => $game->getDrawNr(),
            "gameHits" => $game->getResults($winArr,$gameBet),
        );

        $data = array(
            "gameDate" => $game->getDrawDate()->format("d/m/Y"),
            "rowList"  => $rowList
        );

        return $this->render ( 'AppBundle:Results:game-results.html.twig', $data );      
    }


}
