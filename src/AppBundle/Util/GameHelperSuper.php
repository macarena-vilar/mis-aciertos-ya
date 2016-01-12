<?php

namespace AppBundle\Util;

use AppBundle\Util\GameHelper;

class GameHelperSuper extends GameHelper {
	
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
				"logoW" => 100 * 2,
				"logoH" => 78 * 2
		);
	}	

	public function refreshFromWS() {
		return true;
	}		

	protected function getDivisionPrize($hits) {
	}	
	
	public function getGameName() {
		return "SUPERLOTTO";
	}

	public function getMinStart() {
		return 465;
	}

	public function basicInitFromJson($jsonTxt) {
		$data = json_decode($jsonTxt);
		if ( $data->status == "REJECTED" )
			return null;

		$pcreFN ="/FECHA:(\d\d\/\d\d\/\d\d\d\d) SORTEO #(\d+)/";
		preg_match_all($pcreFN,$data->text,$matches);
		$drawDate = \DateTime::createFromFormat("d/m/Y H:i:s",$matches[1][0] . "00:00:00");

		$retVal = ["drawNr"=> $matches[2][0], "drawDate"=>$drawDate];

		return $retVal;

	}

	protected $wildCard;
	
	public function initFromJson($jsonTxt) {
		$data = json_decode($jsonTxt);
		if ( $data->status == "REJECTED" )
			return null;
				$matches = array();
		$pcre = "/" . str_repeat("(\d\d)-",4) . "(\d\d)  SB (\d\d)/";
		preg_match_all("$pcre",$data->text,$matches);
		$this->nrList = array();
		for ( $i=1 ; $i<=5 ; $i++ ){
			$this->nrList[] = $matches[$i][0];						
		}

		$this->wildCard = $matches[6][0];
		preg_match_all( "/Gs (\d+)/",
				preg_replace("/\./","",$data->text),
				$matches);
		
		$this->divList = array(
			"Pozo acumulado " . $this->moneyFormat($matches[1][14]) . " (estimado)",
			$this->moneyFormat($matches[1][0]) . "/>". $this->moneyFormat($matches[1][7]),
			$this->moneyFormat($matches[1][1]) . "/" . $this->moneyFormat($matches[1][8]),
			$this->moneyFormat($matches[1][2]) . "/" . $this->moneyFormat($matches[1][9]),
			$this->moneyFormat($matches[1][3]) . "/" . $this->moneyFormat($matches[1][10]),
			$this->moneyFormat($matches[1][4]) . "/" . $this->moneyFormat($matches[1][11]),
			$this->moneyFormat($matches[1][5]) . "/" . $this->moneyFormat($matches[1][12]),
			$this->moneyFormat($matches[1][6]) . "/" . $this->moneyFormat($matches[1][13]),
			"Sin premio"
		);
	}
	
	
	public function getSLPrize($hits,$wildCard) {

		$pStr = "$hits/5";

		if ( $wildCard )
			$pStr .= " + SB";

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

		return $pStr . " " . $this->divList[$index]; 
	}

	public function getGameResults($winNrArr) {
		$result = array();
		$lowerWinNrArr = array_slice($winNrArr,0,5);
		$hits = 0;
		foreach( $this->nrList as $nr ) {
			if ( array_search($nr, $lowerWinNrArr) !== false ) {
				$hits++;
				$result[] = array (
						"nr"    => $nr,
						"hit"   => 1,
				);
			} else {
				$result[] = array (
						"nr"    => $nr,
						"hit"   => 0,
				);			
			}
		}

		// The wildCard
		if ( $this->wildCard == $winNrArr[5] ){
			$result[] = array (
					"nr"    => $this->wildCard ,
					"hit"   => 1,
			);
			$wildCard = true;
		} else {
			$result[] = array (
					"nr"    => $this->wildCard ,
					"hit"   => 0,
			);							
			$wildCard = false;
		}
		
		return array(
			"hits"   => $hits,
			"prize"  => $this->getSLPrize($hits,$wildCard),
			"nrList" => $result,
		);
	}

}