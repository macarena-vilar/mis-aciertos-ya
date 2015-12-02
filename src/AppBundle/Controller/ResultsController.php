<?php

namespace AppBundle\Controller;
/*
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Response;
*/
use FOS\RestBundle\Controller\FOSRestController;
use FOS\RestBundle\Controller\Annotations\Route;
use Symfony\Component\HttpFoundation\Response;

class ResultsController extends FOSRestController
{
    /**
     * @Route("/api/v1/hits/{gameId}/{gameD}/{gameM}/{gameY}")
     */
    public function getHitsAction($gameId,$gameD,$gameM,$gameY) {
    	$winArr = $this->getRequest()->get("winningNr");
    	
		$repo = $this->getDoctrine()
					 ->getRepository('AppBundle:Fsp_Games');
		
		$data = $repo->getGamesByDate($gameId,"$gameY-$gameM-$gameD",$winArr);
		$view = $this->view($data,200)
		             ->setTemplate("AppBundle:Results:game-results.html.twig")
		             ->setTemplateVar("results");
		
		/*$serializedEntity = $this->container
		                         ->get('serializer')
		                         ->serialize($data, 'json');
		
		return new Response($serializedEntity);
		*/
		  
		return $this->handleView($view);
    }
    
    /**
     * @Route("/api/v1/pastGames/{gameId}")
     */
    public function getPastGamesAction($gameId) {
    	
		$repo = $this->getDoctrine()
					 ->getRepository('AppBundle:Fsp_Games');
		
		$data = $repo->getPastGames($gameId,0,0);
		
		$arr = array (
				"draw" => 1,
				"recordsTotal" => count($data),
				"recordsFiltered" => count($data),
				"data"=> $data
		);
		
    	$serializedEntity = $this->container
		                         ->get('serializer')
		                         ->serialize($arr, 'json');
		
		return new Response($serializedEntity);
    	 
    }
}
