<?php

namespace AppBundle\Entity;

/**
 * FspInpHeaderRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class FspInpHeaderRepository extends \Doctrine\ORM\EntityRepository {
	public function findGamesByDate($gameId, $gameDate) {
		$query = $this->getEntityManager ()
		              ->createQuery ( 
		              		"select h 
                               from AppBundle:FspInpHeader h
                              where h.gameid   = :gameid
                                and h.drawdate = :gamedate
                              order by h.drawnr" )
		              ->setParameter ( "gameid", $gameId )
		              ->setParameter ( "gamedate", $gameDate );
		$data = $query->getResult();
		$ret = array();
		foreach ( $data as $row ){
			$ret[] = $row->getDrawnr();
		}
		return $ret;
	}

	public function getLastGame($gameId) {
		$query = $this->getEntityManager ()
		              ->createQuery ( 
		              		"select coalesce(max(h.drawnr),0)
                               from AppBundle:FspInpHeader h
                              where h.gameid   = :gameid" )
		              //->groupBy("h.")
		              ->setParameter ( "gameid", $gameId );
		$data = $query->getSingleResult();
		return $data[1];
	}

	public function newHeader($gameId,$drawNr,$drawDate){
		$h = new FspInpHeader();
		$h ->setGameid($gameId)
		   ->setDrawnr($drawNr)
		   ->setDrawdate($drawDate);
		$em = $this->getEntityManager();
		$em->persist($h);
		$em->flush();
	}
}
