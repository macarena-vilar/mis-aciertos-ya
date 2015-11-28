<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
    	$divs = array(
    			"games" => array(
    					"P" =>
    					array (
    							"gameId"      => "P",
    							"gameName"    => "Premio",
    							"gameLogo"    => "/assets/images/logoPremio.png",
    							"gameNumbers" => 10,
    							"inpOffset"   => ""
    					),
    					"E" =>
    					array (
    							"gameId"      => "E",
    							"gameName"    => "Elegi2",
    							"gameLogo"    => "/assets/images/logoElegi2.png",
    							"gameNumbers" => 2,
    							"inpOffset"   => ""
    					)
    			)
    	);
    	return $this->render('AppBundle:Results:results.html.twig',$divs);
    	 
    }
}
