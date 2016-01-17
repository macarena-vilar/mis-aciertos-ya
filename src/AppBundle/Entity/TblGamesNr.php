<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * TblGamesNr
 *
 * @ORM\Table(name="tbl_games_nr", indexes={@ORM\Index(name="IDX_7B5903C8B3E163B", columns={"id_master"})})
 * @ORM\Entity
 */
class TblGamesNr
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="tbl_games_nr_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var integer
     *
     * @ORM\Column(name="nr", type="integer", nullable=false)
     */
    private $nr;

    /**
     * @var \AppBundle\Entity\TblGames
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\TblGames", inversedBy="numbers")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_master", referencedColumnName="id")
     * })
     */
    private $idMaster;



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
     * Set nr
     *
     * @param integer $nr
     *
     * @return TblGamesNr
     */
    public function setNr($nr)
    {
        $this->nr = $nr;

        return $this;
    }

    /**
     * Get nr
     *
     * @return integer
     */
    public function getNr()
    {
        return $this->nr;
    }

    /**
     * Set idMaster
     *
     * @param \AppBundle\Entity\TblGames $idMaster
     *
     * @return TblGamesNr
     */
    public function setIdMaster(\AppBundle\Entity\TblGames $idMaster = null)
    {
        $this->idMaster = $idMaster;

        return $this;
    }

    /**
     * Get idMaster
     *
     * @return \AppBundle\Entity\TblGames
     */
    public function getIdMaster()
    {
        return $this->idMaster;
    }
}
