<?php

namespace AppBundle\Entity;

class SuperLotto extends TblGames
{
    public function initData() {
        parent::initData();

        $this->minStart = 466;
    }


    public function loadFromJson($data) {

		if ( $data->status == "REJECTED" )
			return null;
		$pcre = "/" . str_repeat("(\d\d)-",4) . "(\d\d)  SB (\d\d)/";
		preg_match_all("$pcre",$data->text,$matches);
		for ( $i=1 ; $i<=6 ; $i++ ){
			$this->newNumber($matches[$i][0]);
		}

		preg_match_all( "/Gs (\d+)/",
				preg_replace("/\./","",$data->text),
				$matches);
	    $this->newPrize($matches[1][14]);
	    $this->newPrize($matches[1][ 7]);
	    $this->newPrize($matches[1][ 0]);
	    $this->newPrize($matches[1][ 8]);
	    $this->newPrize($matches[1][ 1]);
	    $this->newPrize($matches[1][ 9]);
	    $this->newPrize($matches[1][ 2]);
	    $this->newPrize($matches[1][10]);
	    $this->newPrize($matches[1][ 3]);
	    $this->newPrize($matches[1][11]);
	    $this->newPrize($matches[1][ 4]);
	    $this->newPrize($matches[1][12]);
	    $this->newPrize($matches[1][ 5]);
	    $this->newPrize($matches[1][13]);		
	    $this->newPrize($matches[1][ 6]);
	}

    public function getGameName() {
    	return "SUPERLOTTO";
    }

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
				"logoW" => 160,
				"logoH" => 78 * 2,
				"prizeExpiration" => 90,
				"askForBet" => true,
		);
	}

    public function getResults($winArr,$bet){
		$result = array();		
		$hits = 0;

		$nrArr = $this->getNumbers()->toArray();

		for ( $i=0 ; $i < count($winArr)-2 ; $i++ ){
			$nr = $nrArr[$i];
			$indx = array_search($nr->getNr(), $winArr);
			if ( $indx  !== false && $indx != 5 ) {
				$hits++;
				$result[] = array (
						"nr"    => $nr->getNr(),
						"hit"   => 1,
				);
			} else {
				$result[] = array (
						"nr"    => $nr->getNr(),
						"hit"   => 0,
				);			
			}
		}

		// The wildCard
		if ( $nrArr[5]->getNr() == $winArr[5] ){
			$result[] = array (
					"nr"    => $nrArr[5]->getNr() ,
					"hit"   => 1,
			);
			$wildCard = true;
		} else {
			$result[] = array (
					"nr"    => $nrArr[5]->getNr() ,
					"hit"   => 0,
			);
			$wildCard = false;
		}

		$pStr = "$hits/5";

		if ( $wildCard )
			$pStr .= " + SB";

		$pStr .= " acierto";
		if($hits>1)
			$pStr .= "s";

		$index = 8;
		if ( $hits == 5 ) {
			if ( $wildCard )
				$index = 0;
			else 
				$index = 1;
		}
		if ( $hits == 4 ) {
			if ( $wildCard )
				$index = 2;
			else 
				$index = 3;
		}

		if ( $hits == 3 ) {
			if ( $wildCard )
				$index = 4;
			else 
				$index = 5;
		}

		if ($hits == 2 && $wildCard )
			$index = 6;

		if ($hits == 1 && $wildCard )
			$index = 7;

		return array(
			"hits"   => $hits,
			"prize"  => $pStr . " " . $this->strPrize($index,$bet),
			"nrList" => $result,
		);     	
    }

    private function strPrize($index,$bet) {

    	if ( $index == 8 )
    		return "Sin premio";

    	$repo = $this->em->getRepository("AppBundle:TblStakes");

    	$stakes = $repo->getGameStakes('S');
    	if ( $stakes[0]/100 == $bet )
    		$j = 0;
    	else if ( $stakes[1]/100 == $bet )
    		$j=1;
    	else
    		throw new \Exception("Apuesta incorrecta");
    	$strP = "";
		$prArr = $this->getPrizes()->toArray();
		if ( $index == 0 ){
			$strP = (($j==0)? "Medio p": "P") . "ozo acumulado para el sorteo de referencia";
		}
		else {
			$strP = $this->nrFormat($prArr[2*$index-$j]->getPrize());
		} 

    	return $strP;
    }
	
}
