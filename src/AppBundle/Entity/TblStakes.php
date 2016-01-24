<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * TblStakes
 *
 * @ORM\Table(name="tbl_stakes")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\TblStakesRepository")
 */
class TblStakes
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
     * @var string
     *
     * @ORM\Column(name="stakes", type="string", nullable=false)
     */
    private $stakes;



    /**
     * Set gameid
     *
     * @param string $gameid
     *
     * @return TblStakes
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
     * Set stakes
     *
     * @param string $stakes
     *
     * @return TblStakes
     */
    public function setStakes($stakes)
    {
        $this->stakes = $stakes;

        return $this;
    }

    /**
     * Get stakes
     *
     * @return string
     */
    public function getStakes()
    {
        return $this->stakes;
    }
}
