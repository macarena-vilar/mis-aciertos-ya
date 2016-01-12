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
		if ( $hits == 2 )
			return 1;
		else if ( $hits == 1 )
			return 2;
		else
			return 0;
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
	
	public function initFromJson($jsonTxt) {
		echo "hola";
		$data = json_decode($jsonTxt);
		if ( $data->status == "REJECTED" )
			return null;

		$pcreFN ="/FECHA:(\d\d\/\d\d\/\d\d\d\d) SORTEO #(\d+)/";
		preg_match_all($pcreFN,$data->text,$matches);
		var_dump($matches);
		die("qq");
		/*
		$matches = array();
		$pcre = "/" . str_repeat("(\d\d)-",9) . "(\d\d)/";
		preg_match_all("$pcre",$data->text,$matches);
		$this->nrList = array();
		for ( $i=1 ; $i<=10 ; $i++ ){
			$this->nrList[] = $matches[$i][0];						
		}
				
		preg_match_all( "/Gs (\d+)/",
				preg_replace("/\./","",$data->text),
				$matches);
		
		$this->divList = array(
				$matches[1][3],
				$matches[1][0],
				$matches[1][1],
				$matches[1][2],
		);
		*/		
	}
	
}