<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class ResultsController extends Controller
{
    /**
     * @Route("/premio")
     */
    public function premioAction()
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
