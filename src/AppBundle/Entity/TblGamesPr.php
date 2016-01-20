<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * TblGamesPr
 *
 * @ORM\Table(name="tbl_games_pr", indexes={@ORM\Index(name="IDX_AF183C17B3E163B", columns={"id_master"})})
 * @ORM\Entity
 */
class TblGamesPr
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="tbl_games_pr_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var integer
     *
     * @ORM\Column(name="prize", type="integer", nullable=false)
     */
    private $prize;

    /**
     * @var \AppBundle\Entity\TblGames
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\TblGames", inversedBy="prizes", cascade={"persist"})
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
     * Set prize
     *
     * @param integer $prize
     *
     * @return TblGamesPr
     */
    public function setPrize($prize)
    {
        $this->prize = $prize;

        return $this;
    }

    /**
     * Get prize
     *
     * @return integer
     */
    public function getPrize()
    {
        return $this->prize;
    }

    /**
     * Set idMaster
     *
     * @param \AppBundle\Entity\TblGames $idMaster
     *
     * @return TblGamesPr
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
