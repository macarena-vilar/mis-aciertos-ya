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
				"games"   => GameFactory::getGameUIList (),
				"offset"  => array( "","",""),
		);
		return $this->render ( 'AppBundle:Results:results.html.twig', $divs );
	}
    
    /**
     * @Route("/{gameName}")
     */
    public function gameAction(Request $request,$gameName) {
    	if ( ($game=GameFactory::newGameInstanceByName($gameName)) == null )
    		return $this->redirectToRoute('homepage');
    	$divs = array (
    				"games"   => array ( $game->getGameId() => $game->getGameUI() ),
				    "offset"  => array( "col-xs-offset-4" ),
    	);
    		
    	return $this->render('AppBundle:Results:results.html.twig',$divs);
    }
    
    
}
