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
	protected function getDivisionPrize($hits) {
		if ( $hits == 2 )
			return 1;
		else if ( $hits == 1 )
			return 2;
		else
			return 0;
	}	
}