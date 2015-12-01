<?php
namespace AppBundle\Controller;;

use FOS\RestBundle\Controller\Annotations\Route;
use FOS\RestBundle\Controller\FOSRestController;
use Symfony\Component\HttpFoundation\Response;

class GamesController extends FOSRestController
{
	/**
 	 * @Route("/hits1", name="winpage")
 	 */
	public function getGames($gameId,$gameDate) {
		$repo = $this->getDoctrine()
					  ->getRepository('AppBundle:Fsp_Games');
		$data = $repo->getGamesByDate($gameId,$gameDate);

		$serializedEntity = $this->container
		                         ->get('serializer')
		                         ->serialize($data, 'json');
		
		return new Response($serializedEntity);
	}
	
	
	/**
 	 * @Route("/api/v1/history/{gameId}", name="winpage")
	 */
	public function getGamesHistory($gameId) {
		
		$offset = $paramFetcher->get('offset');
		$start = null == $offset ? 0 : $offset + 1;
		$limit = $paramFetcher->get('limit');
		
		$repo = $this->getDoctrine()
					  ->getRepository('AppBundle:Fsp_Games');
		$data = $repo->getGamesByDate($gameId,$gameDate);

		$serializedEntity = $this->container
		                         ->get('serializer')
		                         ->serialize($data, 'json');
		
		return new Response($serializedEntity);
	}
}
