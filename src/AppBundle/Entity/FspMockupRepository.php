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
        return $data[0]->getJsontxt();
	}
}