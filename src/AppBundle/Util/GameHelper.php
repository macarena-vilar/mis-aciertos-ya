<?php

namespace AppBundle\Util;

/**
 *
 * @author lblum@menhir.com.ar
 *        
 */
abstract class GameHelper {
	
	protected $nrList=array();
	
	protected $divList=array();
	
	protected abstract function getDivisionPrize($hits);

	public abstract function getGameUI();
	
	public abstract function getGameId();
	
	public abstract function getGameName();
	
	public abstract function initFromJson($jsonTxt);		
	
	public function getGameResults($winNrArr) {
		$result = array();
		$hits = 0;
		foreach( $winNrArr as $nr ) {
			if ( array_search($nr, $this->nrList) !== false ) {
				$hits++;
				$result[] = array (
						"nr"    => $nr,
						"hit"   => 1,
				);
			} else {
				$result[] = array (
						"nr"    => $nr,
						"hit"   => 0,
				);			
			}
		}
		
		return array(
			"hits"   => $hits,
			"prize"  => $this->getPrize($hits),
			"nrList" => $result,
		);
	}
	
	public function setDivList($divList) {
		$this->divList = $divList;
	}
	
	public function getPrize($hits) {
		print_r($this->divList);
		return $this->getDivisionPrize($hits);
	}
	
}