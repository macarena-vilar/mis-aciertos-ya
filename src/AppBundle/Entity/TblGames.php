<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * TblGames
 *
 * @ORM\Table(name="tbl_games")
 * @ORM\InheritanceType("SINGLE_TABLE")
 * @ORM\DiscriminatorColumn(name="gameid", type="string", length=1)
 * @ORM\DiscriminatorMap({"E" = "AppBundle\Entity\Elegi2", "P" = "AppBundle\Entity\Premio", "S" = "AppBundle\Entity\SuperLotto"})
 * @ORM\Entity(repositoryClass="AppBundle\Entity\TblGamesRepository")
 */
abstract class TblGames
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="tbl_games_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var integer
     *
     * @ORM\Column(name="drawnr", type="bigint", nullable=false)
     */
    private $drawnr;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="drawdate", type="date", nullable=false)
     */
    private $drawdate;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\OneToMany(targetEntity="AppBundle\Entity\TblGamesNr", mappedBy="game")
     */
    private $numbers;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\OneToMany(targetEntity="AppBundle\Entity\TblGamesPr", mappedBy="game")
     */
    private $prizes;

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
     * Set drawnr
     *
     * @param integer $drawnr
     *
     * @return TblGames
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
     * @return TblGames
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

    /**
     * Add number
     *
     * @param \AppBundle\Entity\TblGamesNr $number
     *
     * @return TblGames
     */
    public function addNumber(\AppBundle\Entity\TblGamesNr $number)
    {
        $this->numbers[] = $number;

        return $this;
    }

    /**
     * Remove number
     *
     * @param \AppBundle\Entity\TblGamesNr $number
     */
    public function removeNumber(\AppBundle\Entity\TblGamesNr $number)
    {
        $this->numbers->removeElement($number);
    }

    /**
     * Get numbers
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getNumbers()
    {
        return $this->numbers;
    }

    /**
     * Add prize
     *
     * @param \AppBundle\Entity\TblGamesPr $prize
     *
     * @return TblGames
     */
    public function addPrize(\AppBundle\Entity\TblGamesPr $prize)
    {
        $this->prizes[] = $prize;

        return $this;
    }

    /**
     * Remove prize
     *
     * @param \AppBundle\Entity\TblGamesPr $prize
     */
    public function removePrize(\AppBundle\Entity\TblGamesPr $prize)
    {
        $this->prizes->removeElement($prize);
    }

    /**
     * Get prizes
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getPrizes()
    {
        return $this->prizes;
    }

    private $em = null;

    /**
     * Constructor
     */
    public function __construct($em) {
        $this->numbers = new \Doctrine\Common\Collections\ArrayCollection();
        $this->prizes = new \Doctrine\Common\Collections\ArrayCollection();
        $this->em = $em;
    }

    public function getLastGame() {
        $query = $this->em
                      ->createQuery (
                            "select coalesce(max(g.drawnr),-1),
                                    coalesce(max(g.drawdate),'2000-01-01')
                               from " . static::class . " g" );
                      //->setParameter ( "gameid", $gameId );
        $data = $query->getSingleResult();
        return [ "drawnr" => $data[1] , "drawdate" => $data[2]];
    }

    public function getGamesByDate($gameDate) {

        $query = $this->em
                      ->createQuery (
                            "select g.drawnr 
                               from " . static::class . " g
                              where g.drawdate = :gamedate
                              order by g.drawnr" )
                      ->setParameter ( "gamedate", $gameDate );
        $data = $query->getResult();
        if ( count($data) == 0 )
            throw new \Exception("No hay juegos para esa fecha");

        $gameList = [];
        foreach ( $data as $row ){
            $gameList[] = $this->getGameByNr($row["drawnr"]);
        }

        return $gameList;

    }

    public function getGameByNr($gameNr) {

        $query = $this->em
                      ->createQuery (
                          "select g
                             from " . static::class . " g
                            where g.drawnr = :gamenr" )
                      ->setParameter ( "gamenr", $gameNr );
        $data = $query->getResult();
        return $data[0];
    }

    public function initFromJson($jsonTxt) {
        $data = json_decode($jsonTxt);
        if ( $data->status == "REJECTED" )
            return false;

        $pcreFN ="/FECHA:(\d\d\/\d\d\/\d\d\d\d) SORTEO #(\d+)/";
        preg_match_all($pcreFN,$data->text,$matches);
        $drawDate = \DateTime::createFromFormat("d/m/Y H:i:s",$matches[1][0] . "00:00:00");

        $this->setDrawnr($matches[2][0]);
        $this->drawDate($drawDate);

        $this->loadFromJson($data);

    }

    public abstract function loadFromJson($data);
}