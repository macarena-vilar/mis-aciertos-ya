<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use AppBundle\Util\GameFactory;

class DefaultController extends Controller {
	/**
	 * @Route("/", name="homepage")
	 */
	public function indexAction(Request $request) {
		$repoStakes = $this->getDoctrine()->getRepository('AppBundle:TblStakes');

		$divs = array (
				"games"   => GameFactory::getGameUIList (),
				"stakes"  => $repoStakes->getStakes(),
				"offset"  => array( "","",""),
				"social"  => $this->container->getParameter("social.icons"),
		);
		return $this->render ( 'AppBundle:Results:results.html.twig', $divs );
	}
    
    /**
     * @Route("/{gameName}")
     */
    public function gameAction(Request $request,$gameName) {
    	if($gameName=="test")
    		return $this->testAction($request);

		$repo = $this->getDoctrine()->getRepository('AppBundle:TblGames');
    	if ( ($game=$repo->newGameInstanceByName($gameName)) == null )
    		return $this->redirectToRoute('homepage');
    	$divs = array (
    				"games"   => array ( $game->getGameId() => $game->getGameUI() ),
				    "offset"  => array( "col-xs-offset-4" ),
					"social"  => $this->container->getParameter("social.icons"),
    	);
    		
    	return $this->render('AppBundle:Results:results.html.twig',$divs);
    }
    
    protected function testAction(Request $request) {
	    $repo = $this->getDoctrine()->getRepository('AppBundle:TblStakes');

	    print_r($repo->getStakes("S"));

    }
    
}
