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
	
	public static function newGameInstance($gameId) {
		// Forced!
		// In a new incarnation, must be dynamic
		if ( $gameId === "E" )
			return new GameHelperElegi2();
		if ( $gameId === "P" )
			return new GameHelperPremio();
		if ( $gameId === "S" )
			return new GameHelperSuper();
		
		return null;
	}
}
