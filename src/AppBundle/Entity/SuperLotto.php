<?php

namespace AppBundle\Entity;

class SuperLotto extends TblGames
{
    public function initData() {
        parent::initData();

        $this->minStart = 466;
    }


    public function loadFromJson($data) {

		if ( $data->status == "REJECTED" )
			return null;
		$pcre = "/" . str_repeat("(\d\d)-",4) . "(\d\d)  SB (\d\d)/";
		preg_match_all("$pcre",$data->text,$matches);
		for ( $i=1 ; $i<=6 ; $i++ ){
			$this->newNumber($matches[$i][0]);
		}

		preg_match_all( "/Gs (\d+)/",
				preg_replace("/\./","",$data->text),
				$matches);
	    $this->newPrize($matches[1][14]);
	    $this->newPrize($matches[1][ 0]);
	    $this->newPrize($matches[1][ 7]);
	    $this->newPrize($matches[1][ 1]);
	    $this->newPrize($matches[1][ 8]);
	    $this->newPrize($matches[1][ 2]);
	    $this->newPrize($matches[1][ 9]);
	    $this->newPrize($matches[1][ 3]);
	    $this->newPrize($matches[1][10]);
	    $this->newPrize($matches[1][ 4]);
	    $this->newPrize($matches[1][11]);
	    $this->newPrize($matches[1][ 5]);
	    $this->newPrize($matches[1][12]);
	    $this->newPrize($matches[1][ 6]);
	    $this->newPrize($matches[1][13]);		
	}

    public function getGameName() {
    	return "SUPERLOTTO";
    }

    public function getGameId() {
    	return "S";
    }

	public function getGameUI() {
		return array (
				"gameId" => "S",
				"gameName" => "SuperLotto",
				"gameLogo" => "/assets/images/logoSuper.png",
				"gameNumbers" => 6,
				"nrFormats" => array_merge(array_fill(0,5,"entryNumberWhite"),
						                   array_fill(5,1,"entryNumberWildCard")),
				"inpOffset" => "",
				"gameNrWidth" => 300,				
				"logoW" => 160,
				"logoH" => 78 * 2,
				"prizeExpiration" => 90,
				"askForBet" => false,
		);
	}

    public function getResults($winArr,$bet=1){
    	
    }
	
}

