<?php

namespace AppBundle\Entity;

/**
 * FspMockupRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class FspMockupRepository extends \Doctrine\ORM\EntityRepository
{
	public function getWinnersInfo($gameId,$drawNr) {
		$query = $this->getEntityManager ()
		              ->createQuery (
				            "select m
                               from AppBundle:FspMockup m
                              where m.gameid = :gameid
                                and m.drawnr = :drawnr")
		              ->setParameter ( "gameid", $gameId )
		              ->setParameter ( "drawnr", $drawNr );
        $data = $query->getResult();
        if (count($data) == 0 )
        	return '{"status":"REJECTED","rejectReason":"INFORMATION_NOT_AVAILABLE"}';
        return $data[0]->getJsontxt();
	}
}
