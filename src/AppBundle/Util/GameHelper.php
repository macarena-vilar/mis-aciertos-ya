<?php

namespace AppBundle\Util;

/**
 *
 * @author lblum@menhir.com.ar
 *        
 */
abstract class GameHelper {
	
	protected abstract function checkNrs($winningNr);
	
	protected abstract function getDivisionPrize($hits);
	
	public function getGameResults($gameId,$nDays,$guessNrArr) {
		checkNr($guessNrArr);
	}
	
}