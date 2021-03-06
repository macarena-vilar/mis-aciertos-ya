<?php



namespace AppBundle\Entity;

use \AppBundle\Util\GameFactory;
use \AppBundle\Util\GameHelper;

/**
 * TblGamesRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class TblGamesRepository extends \Doctrine\ORM\EntityRepository {

    public function newGameInstance($gameId) {
        // Forced!
        // In a new incarnation, must be dynamic
        $em = $this->getEntityManager();
        if ( $gameId === "E" )
            return new Elegi2($em);
        if ( $gameId === "P" )
            return new Premio($em);
        if ( $gameId === "S" )
            return new SuperLotto($em);
        
        return null;
    }

    public function newGameInstanceByName($gameName) {
        // Forced!
        // In a new incarnation, must be dynamic
        $em = $this->getEntityManager();
        if ( $gameName === "ELEGIDOS" )
            return new Elegi2($em);
        if ( $gameName === "PREMIO" )
            return new Premio($em);
        if ( $gameName === "SUPERLOTTO" )
            return new SuperLotto($em);
        
        return null;
    }

    public function getGamesByDate($gameId,$gameDate=null) {

        $game = $this->newGameInstance($gameId);
        $lastGame = $game->getLastGame();

        if ( $gameDate == null || $gameDate > $lastGame["drawdate"] ) {
            $this->loadGamesByDateFromWS($game,$gameDate,$game->getMinStart($lastGame["drawnr"]));
        }

        if ($gameDate !=null )
        	return $game->getGamesByDate($gameDate);
        else 
        	return null;

    }

    public function getGameByNr($gameId,$gameNr=null) {

        $game = $this->newGameInstance($gameId);
        $lastGame = $game->getLastGame();

        if ( $gameNr == null || $gameNr > $lastGame["drawnr"] ) {
            $this->loadGamesByDateFromWS($game,$gameNr,$game->getMinStart($lastGame["drawnr"]));
        }

        if ($gameNr !=null )
        	return $game->getGameByNr($gameNr);
        else 
        	return null;
    }

   	private function loadFromWS($gameId,$drawNr){
        $game = GameFactory::newGameInstance($gameId);
    }


    public function loadGamesByDateFromWS($game,$gameDate,$start) {

    	global $kernel;
		if($kernel instanceOf \AppCache) 
			$kernel = $kernel->getKernel();

        $restClient = $kernel->getContainer()->get('ci.restclient');

        $urlBase = $kernel->getContainer()->getParameter("winnerInfo.rest.url");
        $headers = [CURLOPT_HTTPHEADER => $kernel->getContainer()->getParameter("rest.headers")];

        $emptyIt = 0;
        while ( true ){
			$url = $urlBase . "?game-name=" . $game->getGameName() . "&draw=$start";

			$data =  $restClient->get($url,$headers)->getContent();
			$newGame = clone $game;
			if ( $newGame->initFromJson($data) ) {
				try {
					$newGame->saveData();
				} catch( \Exception $ex) {
					//echo $ex->getMessage() . "\n";
				}

        		$emptyIt = 0;
			} else {
				$emptyIt++;
			}

			if ( $emptyIt >= $game->getMaxEmptyItList() )
				break;

			$start ++;

        }

        $this->getEntityManager()->flush();

    }

}
