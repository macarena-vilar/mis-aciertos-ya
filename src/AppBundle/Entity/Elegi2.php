<?php

namespace AppBundle\Entity;

class Elegi2 extends TblGames
{

    public function initData() {
        parent::initData();

        $this->minStart = 1043;
    }


    public function loadFromJson($data) {
	    $matches = array();
	    preg_match_all("/ [AB]:(\d\d)/",$data->text,$matches);
	    $this->newNumber($matches[1][0]);
	    $this->newNumber($matches[1][1]);

	    preg_match_all( "/Match\s+(\d)\s+(\d+)\s+(\d+)/",
	                                preg_replace("/\./","",$data->text),
	                            $matches);
	    $this->newPrize($matches[3][0]);
	    $this->newPrize($matches[3][1]);
	}

    public function getGameName() {
    	return "ELEGIDOS";
    }

    public function getGameId() {
    	return "E";
    }

	public function getGameUI() {
		return array (
				"gameId" => "E",
				"gameName" => "Elegi2",
				"gameLogo" => "/assets/images/logoElegi2.png",
				"gameNumbers" => 2,
				"nrFormats" => array_fill(0,2,"entryNumberWhite"),
				"inpOffset" => "",
				"gameNrWidth" => 100,				
				"logoW" => 200 * 2,
				"logoH" => 71 * 2 ,
				"prizeExpiration" => 90,
				"askForBet" => true,
		);
	}

    public function getResults($winArr,$gameBet){
		$result = array();
		$hits = 0;
        $result = [];
        foreach($this->getNumbers() as $nr) {
            $result[] = [
                "nr"    => $nr->getNr(),
                "hit"   => 0,                
            ];
        }
        foreach( $winArr as $winNr ){
		  for ( $i=0 ; $i < count($result) ; $i++ ){
              if ( $result[$i]["hit"] == 0 ) {
                if ( $winNr == $result[$i]["nr"]){
                    $hits++;
                    $result[$i]["hit"] = 1;
                    break;                    
                }                  
              }
          }
        }
        
		$prArr = $this->getPrizes()->toArray();

		$prizeStr = "Sin premio (0 aciertos)";
		if ($hits == 2)
			$prizeStr = $this->nrFormat($prArr[0]->getPrize()*$gameBet/1000,0,",",".") . " (2 aciertos)";
		if ($hits == 1)
			$prizeStr = $this->nrFormat($prArr[1]->getPrize()*$gameBet/1000,0,",",".") . " (1 acierto)";

		return array(
			"hits"   => $hits,
			"prize"  => $prizeStr,
			"nrList" => $result,
		);    
    	
    }

		

}

