<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * FspMockup
 *
 * @ORM\Table(name="fsp_mockup")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\FspMockupRepository")
 */
class FspMockup
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="fsp_mockup_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="gameid", type="string", length=1, nullable=true)
     */
    private $gameid;

    /**
     * @var integer
     *
     * @ORM\Column(name="drawnr", type="integer", nullable=true)
     */
    private $drawnr;

    /**
     * @var string
     *
     * @ORM\Column(name="jsontxt", type="string", length=4096, nullable=true)
     */
    private $jsontxt;



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
     * Set gameid
     *
     * @param string $gameid
     *
     * @return FspMockup
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
     * @return FspMockup
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
     * Set jsontxt
     *
     * @param string $jsontxt
     *
     * @return FspMockup
     */
    public function setJsontxt($jsontxt)
    {
        $this->jsontxt = $jsontxt;

        return $this;
    }

    /**
     * Get jsontxt
     *
     * @return string
     */
    public function getJsontxt()
    {
        return $this->jsontxt;
    }
}
