<?php

namespace AppBundle\Util;

/**
 *
 * @author lblum@menhir.com.ar
 *        
 */
abstract class GameHelper {
	
	protected abstract function getDivisionPrize($hits);

	public abstract function getGameUI();
	
	public abstract function getGameId();
	
	public function getGameResults($gameId,$nDays,$guessNrArr) {
		checkNr($guessNrArr);
	}
	
}