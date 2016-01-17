<?php

namespace AppBundle\Util;

use Symfony\Component\DependencyInjection\ContainerInterface as Container;
use Doctrine\ORM\EntityManager;

class GameFactory {
	
	public static function getGameList() {
		// Forced!
		// In a new incarnation, must be dynamic	
		return array(
			"AppBundle\Util\Premio",
			"AppBundle\Util\Elegi2",
			"AppBundle\Util\SuperLotto"
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
			return new Elegi2();
		if ( $gameId === "P" )
			return new Premio();
		if ( $gameId === "S" )
			return new SuperLotto();
		
		return null;
	}

	public static function newGameInstanceByName($gameName) {
		// Forced!
		// In a new incarnation, must be dynamic
		if ( strtoupper($gameName) === "ELEGIDOS" ||
			 strtoupper($gameName) === "ELEGI2")
			return new Elegi2();
		if ( strtoupper($gameName) === "PREMIO" ||
			 strtoupper($gameName) === "PREM10")
			return new Premio();
		if ( strtoupper($gameName) === "SUPER" ||
			 strtoupper($gameName) === "SUPERLOTTO")
			return new SuperLotto();
		
		return null;
	}
}
