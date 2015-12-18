<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use AppBundle\Util\GameFactory;

class DefaultController extends Controller {
	/**
	 * @Route("/", name="homepage")
	 */
	public function indexAction(Request $request) {
		$divs = array (
				"games" => GameFactory::getGameUIList () 
		);
		return $this->render ( 'AppBundle:Results:results.html.twig', $divs );
	}
    
    /**
     * @Route("/test/{gameId}", name="testpage")
     */
    public function testAction(Request $request,$gameId="E") {
    	return $this->render('AppBundle:Results:modal.html.twig',array("gameId"=>$gameId));
    }
    
    
}
