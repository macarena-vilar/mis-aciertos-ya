<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Fsp_Games
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="AppBundle\Entity\Fsp_GamesRepository")
 */
class Fsp_Games
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="gameId", type="string", length=1)
     */
    private $gameId;

    /**
     * @var integer
     *
     * @ORM\Column(name="drawNr", type="bigint")
     */
    private $drawNr;

    /**
     * @var \Date
     *
     * @ORM\Column(name="gameDate", type="date")
     */
    private $gameDate;

    /**
     * @var integer
     *
     * @ORM\Column(name="winningNr", type="integer")
     */
    private $winningNr;


    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set gameId
     *
     * @param string $gameId
     *
     * @return Fsp_Games
     */
    public function setGameId($gameId)
    {
        $this->gameId = $gameId;

        return $this;
    }

    /**
     * Get gameId
     *
     * @return string
     */
    public function getGameId()
    {
        return $this->gameId;
    }

    /**
     * Set drawNr
     *
     * @param integer $drawNr
     *
     * @return Fsp_Games
     */
    public function setDrawNr($drawNr)
    {
        $this->drawNr = $drawNr;

        return $this;
    }

    /**
     * Get drawNr
     *
     * @return integer
     */
    public function getDrawNr()
    {
        return $this->drawNr;
    }

    /**
     * Set gameDate
     *
     * @param \Date $gameDate
     *
     * @return Fsp_Games
     */
    public function setGameDate($gameDate)
    {
        $this->gameDate = $gameDate;

        return $this;
    }

    /**
     * Get gameDate
     *
     * @return \Date
     */
    public function getGameDate()
    {
        return $this->gameDate;
    }

    /**
     * Set winningNr
     *
     * @param integer $winningNr
     *
     * @return Fsp_Games
     */
    public function setWinningNr($winningNr)
    {
        $this->winningNr = $winningNr;

        return $this;
    }

    /**
     * Get winningNr
     *
     * @return integer
     */
    public function getWinningNr()
    {
        return $this->winningNr;
    }
}

