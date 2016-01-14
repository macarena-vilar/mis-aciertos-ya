<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * TblGamesByDate
 *
 * @ORM\Table(name="tbl_games_by_date")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\TblGamesByDateRepository")
 */
class TblGamesByDate
{
    /**
     * @var string
     *
     * @ORM\Column(name="gameid", type="string", length=1)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $gameid;

    /**
     * @var integer
     *
     * @ORM\Column(name="drawnr", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $drawnr;

    /**
     * @var \Date
     *
     * @ORM\Column(name="drawdate", type="date", nullable=true)
     */
    private $drawdate;



    /**
     * Set gameid
     *
     * @param string $gameid
     *
     * @return TblGamesByDate
     */
    public function setGameid($gameid)
    {
        $this->gameid = $gameid;

        return $this;
    }

    /**
     * Get gameid
     *
     * @return string
     */
    public function getGameid()
    {
        return $this->gameid;
    }

    /**
     * Set drawnr
     *
     * @param integer $drawnr
     *
     * @return TblGamesByDate
     */
    public function setDrawnr($drawnr)
    {
        $this->drawnr = $drawnr;

        return $this;
    }

    /**
     * Get drawnr
     *
     * @return integer
     */
    public function getDrawnr()
    {
        return $this->drawnr;
    }

    /**
     * Set drawdate
     *
     * @param \DateTime $drawdate
     *
     * @return TblGamesByDate
     */
    public function setDrawdate($drawdate)
    {
        $this->drawdate = $drawdate;

        return $this;
    }

    /**
     * Get drawdate
     *
     * @return \DateTime
     */
    public function getDrawdate()
    {
        return $this->drawdate;
    }
}
