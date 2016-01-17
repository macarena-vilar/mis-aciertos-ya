<?php

namespace AppBundle\Entity;

class Elegi2 extends TblGames
{
    public function initFromJson($data) {
	    $matches = array();
	    preg_match_all("/ [AB]:(\d\d)/",$data->text,$matches);
	    $this->numbers
	    $this->nrList = array(
	            $matches[1][0],
	            $matches[1][1],
	    );

	    preg_match_all( "/Match\s+(\d)\s+(\d+)\s+(\d+)/",
	                                preg_replace("/\./","",$data->text),
	                            $matches);

	    $this->divList = array(
	                    $matches[3][0],
	                    $matches[3][1],
	    );

    }

}

