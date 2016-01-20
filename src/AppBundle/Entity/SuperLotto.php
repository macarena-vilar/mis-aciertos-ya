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
		$result = array();		
		$hits = 0;

		$nrArr = $this->getNumbers()->toArray();

		for ( $i=0 ; $i < count($winArr)-1 ; $i++ ){
			$nr = $nrArr[$i];
			if ( array_search($nr->getNr(), $winArr) !== false ) {
				$hits++;
				$result[] = array (
						"nr"    => $nr->getNr(),
						"hit"   => 1,
				);
			} else {
				$result[] = array (
						"nr"    => $nr->getNr(),
						"hit"   => 0,
				);			
			}
		}

		// The wildCard
		if ( $nrArr[5]->getNr() == $winArr[5] ){
			$result[] = array (
					"nr"    => $nrArr[5]->getNr() ,
					"hit"   => 1,
			);
			$wildCard = true;
		} else {
			$result[] = array (
					"nr"    => $nrArr[5]->getNr() ,
					"hit"   => 0,
			);
			$wildCard = false;
		}

		$pStr = "$hits/5";

		if ( $wildCard )
			$pStr .= " + SB";

		$pStr .= " acierto";
		if($hits>1)
			$pStr .= "s";

		$index = 8;
		if ( $hits == 5 ) {
			if ( $wildCard )
				$index = 0;
			else 
				$index = 1;
		}
		if ( $hits == 4 ) {
			if ( $wildCard )
				$index = 2;
			else 
				$index = 3;
		}

		if ( $hits == 3 ) {
			if ( $wildCard )
				$index = 4;
			else 
				$index = 5;
		}

		if ($hits == 2 && $wildCard )
			$index = 6;

		if ($hits == 1 && $wildCard )
			$index = 7;

		return array(
			"hits"   => $hits,
			"prize"  => $pStr . " " . $this->strPrize($index),
			"nrList" => $result,
		);     	
    }

    private function strPrize($index) {
    	$strP = "";
		$prArr = $this->getPrizes()->toArray();

    	switch($index){
    	case 0:
			$strP = "Pozo acumulado " . $this->nrFormat($prArr[0]->getPrize()) . " (estimado)";
			break;
		case 1:
			$strP = $this->nrFormat($prArr[1]->getPrize()) . "/" . $this->nrFormat($prArr[2]->getPrize());
			break;
		case 2:
			$strP = $this->nrFormat($prArr[3]->getPrize()) . "/" . $this->nrFormat($prArr[4]->getPrize());
			break;
		case 3:
			$strP = $this->nrFormat($prArr[5]->getPrize()) . "/" . $this->nrFormat($prArr[6]->getPrize());
			break;
		case 4:
			$strP = $this->nrFormat($prArr[7]->getPrize()) . "/" . $this->nrFormat($prArr[8]->getPrize());
			break;
		case 5:
			$strP = $this->nrFormat($prArr[9]->getPrize()) . "/" . $this->nrFormat($prArr[10]->getPrize());
			break;
		case 6:
			$strP = $this->nrFormat($prArr[11]->getPrize()) . "/" . $this->nrFormat($prArr[12]->getPrize());
			break;
		case 7:
			$strP = $this->nrFormat($prArr[13]->getPrize()) . "/" . $this->nrFormat($prArr[14]->getPrize());
			break;
		default:
			$strP = "Sin premio";
			break;
    	}

    	return $strP;
    }
	
}

