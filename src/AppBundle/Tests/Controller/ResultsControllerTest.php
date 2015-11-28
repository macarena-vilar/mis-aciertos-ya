<?php

namespace AppBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class ResultsControllerTest extends WebTestCase
{
    public function testPremio()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/premio');
    }

}
