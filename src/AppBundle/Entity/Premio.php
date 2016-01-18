<?php

namespace AppBundle\Entity;

class Premio extends TblGames
{
    public function initData() {
        parent::initData();

        $this->minStart = 128;
    }


    public function loadFromJson($data) {

	    $matches = array();
		$pcre = "/" . str_repeat("(\d\d)-",9) . "(\d\d)/";
		preg_match_all("$pcre",$data->text,$matches);

		for ( $i=1 ; $i<=10 ; $i++ ){
			$this->newNumber($matches[$i][0]);
		}

		preg_match_all( "/Gs (\d+)/",
				preg_replace("/\./","",$data->text),
				$matches);
	    $this->newPrize($matches[1][3]);
	    $this->newPrize($matches[1][0]);
	    $this->newPrize($matches[1][1]);
	    $this->newPrize($matches[1][2]);
	}

    public function getGameName() {
    	return "PREMIO";
    }
}

