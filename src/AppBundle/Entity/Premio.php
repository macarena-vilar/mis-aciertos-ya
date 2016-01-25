<?php

namespace AppBundle\Entity;

class Premio extends TblGames
{
    public function initData() {
        parent::initData();

        $this->minStart = 128;
    }


    public function loadFromJson($data) {

	    $matches = array();
		$pcre = "/" . str_repeat("(\d\d)-",9) . "(\d\d)/";
		preg_match_all("$pcre",$data->text,$matches);

		for ( $i=1 ; $i<=10 ; $i++ ){
			$this->newNumber($matches[$i][0]);
		}

		preg_match_all( "/Gs (\d+)/",
				preg_replace("/\./","",$data->text),
				$matches);
	    $this->newPrize($matches[1][3]);
	    $this->newPrize(100000) ;
	    $this->newPrize(10000);
	    $this->newPrize(2000);
	}

    public function getGameName() {
    	return "PREMIO";
    }

    public function getGameId() {
    	return "P";
    }

	public function getGameUI() {
		return array (
				"gameId" => "P",
				"gameName" => "Premio",
				"gameLogo" => "/assets/images/logoPremio.png",
				"gameNumbers" => 10,
				"nrFormats" => array_fill(0,10,"entryNumberWhite"),
				"inpOffset" => "",
				"gameNrWidth" => 250,				
				"logoW" => 202 * 2,
				"logoH" => 78 * 2 ,
				"prizeExpiration" => 30,
				"askForBet" => false,
		);
	}

    public function getResults($winArr,$bet){
		$result = array();
		$hits = 0;
		$nrArr = $this->getNumbers()->toArray();

		foreach( $this->getNumbers() as $nr ) {
			if ( array_search($nr->getNr(), $winArr) !== false ) {
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
		$prArr = $this->getPrizes()->toArray();    	

		$prizeStr = "Sin premio";
		switch ($hits) {
		case '0':
		case '10':
			//$prizeStr = "Primer premio " . $this->nrFormat($prArr[0]->getPrize()*$bet,0,",",".");
			$prizeStr = "Primer premio: Pozo acumulado para el sorteo de referencia";
			break;
		case '1':
		case '9':
			$prizeStr = "Segundo premio " . $this->nrFormat($prArr[1]->getPrize()*$bet,0,",",".");
			break;
		case '2':
		case '8':
			$prizeStr = "Tercer premio " . $this->nrFormat($prArr[2]->getPrize()*$bet,0,",",".");
			break;
		case '3':
		case '7':
			$prizeStr = "Cuarto premio " . $this->nrFormat($prArr[3]->getPrize()*$bet,0,",",".");
			break;
		}
						
		$prizeStr .= " ($hits acierto";
		if ( $hits != 1 ) 
			$prizeStr .= "s";
		$prizeStr .= ")";

		return array(
			"hits"   => $hits,
			"prize"  => $prizeStr,
			"nrList" => $result,
		); 

    }
	

}
