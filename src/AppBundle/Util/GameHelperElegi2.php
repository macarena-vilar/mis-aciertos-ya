<?php

namespace AppBundle\Util;

use AppBundle\Util\GameHelper;

class GameHelperElegi2 extends GameHelper {
	protected function getDivisionPrize($hits) {
		if ( $hits == 2 )
			return 1;
		else if ( $hits == 1 )
			return 2;
		else
			return 0;
	}	
}