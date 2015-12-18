<?php

namespace AppBundle\Util;

class GameFactory {
	// Forced!
	// In a new incarnation, must be dynamic	
	private $_gameList = array(
			"AppBundle\Util\GameHelperElegi2",
			"AppBundle\Util\GameHelperPremio",
			"AppBundle\Util\GameHelperSuper"
	);
	
	public static function getGameList() {
		return array(
			"AppBundle\Util\GameHelperElegi2",
			"AppBundle\Util\GameHelperPremio",
			"AppBundle\Util\GameHelperSuper"
		);
	}
	
	public static function getGameUIList() {
		$retVal = array();
		foreach ( GameFactory::getGameList() as $game ) {
			$gameObj = new $game;
			$retVal[$gameObj->getGameId()] = $gameObj->getGameUI(); 
		}
		return $retVal;
	}
}
