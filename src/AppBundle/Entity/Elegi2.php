<?php

namespace AppBundle\Entity;

class Elegi2 extends TblGames
{

    public function initData() {
        parent::initData();

        $this->minStart = 1043;
    }


    public function loadFromJson($data) {
	    $matches = array();
	    preg_match_all("/ [AB]:(\d\d)/",$data->text,$matches);
	    $this->newNumber($matches[1][0]);
	    $this->newNumber($matches[1][1]);

	    preg_match_all( "/Match\s+(\d)\s+(\d+)\s+(\d+)/",
	                                preg_replace("/\./","",$data->text),
	                            $matches);
	    $this->newPrize($matches[3][0]);
	    $this->newPrize($matches[3][1]);
	}

    public function getGameName() {
    	return "ELEGIDOS";
    }

}

