<?php

namespace AppBundle\Controller;

use FOS\RestBundle\Controller\FOSRestController;
use FOS\RestBundle\Controller\Annotations\Route;
use Symfony\Component\HttpFoundation\Response;

class MockupController extends FOSRestController
{
    /**
     * @Route("/api/v2/WINNER_INFORMATION")
     */
    public function getHitsAction() {
    	$gameId = substr($this->getRequest()->get("game-name"),0,1);
    	$drawNr = $this->getRequest()->get("draw");
    	$repo = $this->getDoctrine()
					 ->getRepository('AppBundle:FspMockup');
    	return new Response($repo->getWinnersInfo($gameId,$drawNr));
    }

    /**
     * @Route("/api/v2/draw-games/rules/{gameName}")
     */
    public function getStakesAction($gameName) {
        $gameId = substr($gameName,0,1);
        $repo = $this->getDoctrine()
                     ->getRepository('AppBundle:FspMockup');
        return new Response($repo->getStakes($gameId));
    }
    
}
