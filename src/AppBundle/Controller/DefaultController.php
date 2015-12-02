<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

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
    							"inpOffset"   => "",
    							"logoW"       => 202*2,
    							"logoH"       => 78*2
    					),
    					"E" =>
    					array (
    							"gameId"      => "E",
    							"gameName"    => "Elegi2",
    							"gameLogo"    => "/assets/images/logoElegi2.png",
    							"gameNumbers" => 2,
    							"inpOffset"   => "",
    							"logoW"       => 200*2,
    							"logoH"       => 71*2
    					)
    			)
    	);
    	return $this->render('AppBundle:Results:results.html.twig',$divs);
    	 
    }
    /**
     * @Route("/test/{gameId}", name="testpage")
     */
    public function testAction(Request $request,$gameId="E") {
    	return $this->render('AppBundle:Results:modal.html.twig',array("gameId"=>$gameId));
    }
    
    
}
