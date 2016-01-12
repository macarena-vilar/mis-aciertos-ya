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

	public function refreshFromWS() {
		return false;
	}	

	public function getMinStart() {
		return 1;
	}
	
	public function getGameResults($winNrArr) {
		$result = array();
		$hits = 0;
		foreach( $this->nrList as $nr ) {
			if ( array_search($nr, $winNrArr) !== false ) {
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

	public function findGamesByDate($repo,$date){
		return $repo->findGamesByDate($this->getGameId(),$date);
	}

	public function loadFromWS($gameList,$restClient,$urlBase,$headers,$winArr,$gameDate){

    	$rowList =[];
    	foreach ( $gameList as $gameNr ) {
    		$url = $urlBase . "?game-name=" . $this->getGameName() . "&draw=$gameNr";
    		$this->initFromJson($restClient->get($url,$headers)->getContent());
    		$rowList[] = array(
    				     "drawNr"   => $gameNr,
    				     "gameHits" => $this->getGameResults($winArr));
    	}

    	$data = array(
			"gameDate" => $gameDate,
    		"rowList"  => $rowList
    	);

    	return $data;
	}
	
}