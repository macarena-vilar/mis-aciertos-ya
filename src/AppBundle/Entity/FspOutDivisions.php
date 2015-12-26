<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * FspOutDivisions
 *
 * @ORM\Table(name="fsp_out_divisions")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\FspOutDivisionsRepository")
 */
class FspOutDivisions
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
     * @var integer
     *
     * @ORM\Column(name="divnr", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $divnr;

    /**
     * @var string
     *
     * @ORM\Column(name="winnersq", type="decimal", nullable=false)
     */
    private $winnersq;

    /**
     * @var string
     *
     * @ORM\Column(name="winnersamount", type="decimal", nullable=false)
     */
    private $winnersamount;



    /**
     * Set gameid
     *
     * @param string $gameid
     *
     * @return FspOutDivisions
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
     * @return FspOutDivisions
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
     * Set divnr
     *
     * @param integer $divnr
     *
     * @return FspOutDivisions
     */
    public function setDivnr($divnr)
    {
        $this->divnr = $divnr;

        return $this;
    }

    /**
     * Get divnr
     *
     * @return integer
     */
    public function getDivnr()
    {
        return $this->divnr;
    }

    /**
     * Set winnersq
     *
     * @param string $winnersq
     *
     * @return FspOutDivisions
     */
    public function setWinnersq($winnersq)
    {
        $this->winnersq = $winnersq;

        return $this;
    }

    /**
     * Get winnersq
     *
     * @return string
     */
    public function getWinnersq()
    {
        return $this->winnersq;
    }

    /**
     * Set winnersamount
     *
     * @param string $winnersamount
     *
     * @return FspOutDivisions
     */
    public function setWinnersamount($winnersamount)
    {
        $this->winnersamount = $winnersamount;

        return $this;
    }

    /**
     * Get winnersamount
     *
     * @return string
     */
    public function getWinnersamount()
    {
        return $this->winnersamount;
    }
}
