<?php

namespace AppBundle\Util;

use AppBundle\Util\GameHelper;

class GameHelperPremio extends GameHelper {
	public function getGameId() {
		return "P";
	}
	
	public function getGameUI() {
		return array (
				"gameId" => "P",
				"gameName" => "Premio",
				"gameLogo" => "/assets/images/logoPremio.png",
				"gameNumbers" => 10,
				"nrFormats" => array_fill(0,10,"entryNumberWhite"),
				"inpOffset" => "",
				"gameNrWidth" => 250,				
				"logoW" => 202 * 2,
				"logoH" => 78 * 2 
		);
	}	
	
	protected function getDivisionPrize($hits) {
		switch ($hits) {
			case '0':
			case '10':
				return  array("division" => 1 , "txt" => "1er premio",  "money" => 10000000);
				break;
	
			case '1':
			case '9':
				return array("division" => 2 , "txt" => "2do premio"  ,  "money" => 100000);
				break;
	
			case '2':
			case '8':
				return array("division" => 3 , "txt" => "3er premio" , "money" => 10000);
				break;
	
			case '3':
			case '7':
				return array("division" => 4 , "txt" => "4to premio", "money"  => 2000);
				break;
				 
			default:
				return array("division" => 0 , "txt" => "" , "money" => 0);
				break;
		}
	}	
	
	public function getGameName() {
		return "PREMIO";
	}
	
	public function initFromJson($jsonTxt) {
		$data = json_decode($jsonTxt);
		$matches = array();
		$pcre = "/" . str_repeat("(\d\d)-",9) . "(\d\d)/";
		preg_match_all("$pcre",$data->text,$matches);
		$this->nrList = array();
		for ( $i=1 ; $i<=10 ; $i++ ){
			$this->nrList[] = $matches[$i][0];						
		}
		
		print_r($this->nrList);
		
		/*preg_match_all( "/Match\s+(\d)\s+(\d+)\s+(\d+)/",
				preg_replace("/\./","",$data->text),
				$matches);
		
		$this->divList = array(
				$matches[3][0],
				$matches[3][1],
		);	*/
	}
	
}