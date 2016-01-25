<?php

namespace AppBundle\Command;

use Symfony\Bundle\FrameworkBundle\Command\ContainerAwareCommand;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;

class DataLoadCommand extends ContainerAwareCommand
{
    protected function configure()
    {
        $this
            ->setName('data:load')
            ->setDescription('Load game data')
            ->addArgument(
                'game',
                InputArgument::REQUIRED
            );
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $game = $input->getArgument('game');
        
        try {
            $repo = $this->getContainer()->get("doctrine")->getManager()->getRepository('AppBundle:TblGames');
            $repo->getGamesByDate($game);
        } catch ( \Exception $ex ){

        }

        try {
            $repoS = $this->getContainer()->get("doctrine")->getManager()->getRepository('AppBundle:TblStakes');
            $repoS->loadStakesFromWS($game);

        } catch ( \Exception $ex ){
            
        }
    }
}
