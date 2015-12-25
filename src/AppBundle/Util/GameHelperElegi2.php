<?php

namespace AppBundle\Util;

use AppBundle\Util\GameHelper;

class GameHelperElegi2 extends GameHelper {
	public function getGameId() {
		return "E";
	}
	
	public function getGameUI() {
		return array (
				"gameId" => "E",
				"gameName" => "Elegi2",
				"gameLogo" => "/assets/images/logoElegi2.png",
				"gameNumbers" => 2,
				"nrFormats" => array_fill(0,2,"entryNumberWhite"),
				"inpOffset" => "",
				"gameNrWidth" => 100,				
				"logoW" => 200 * 2,
				"logoH" => 71 * 2 
		);
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
		return "ELEGIDOS";
	}
	
	
	public function initFromJson($jsonTxt) {
		$data = json_decode($jsonTxt);
		$matches = array();
		preg_match_all("/ [AB]:(\d\d)/",$data->text,$matches);
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