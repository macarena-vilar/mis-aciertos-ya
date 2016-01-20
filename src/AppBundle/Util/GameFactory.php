<?php

namespace AppBundle\Util;

use Symfony\Component\DependencyInjection\ContainerInterface as Container;
use Doctrine\ORM\EntityManager;

class GameFactory {
	
	public static function getGameList() {
		// Forced!
		// In a new incarnation, must be dynamic	
		return array(
			"AppBundle\Entity\Premio",
			"AppBundle\Entity\Elegi2",
			"AppBundle\Entity\SuperLotto"
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
