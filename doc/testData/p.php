<?php
function echo_ins($t) {
   $data = json_decode($t);
   $jsonTxt = json_encode(array("status" => $data->status,
                                "text"   => $data->text));
   echo "INSERT INTO fsp_mockup (gameid,drawnr,jsontxt) VALUES("
        . "'" . $data->gameId . "',"
        . $data->drawNr .","
        . "'$jsonTxt');\n";
}
echo_ins("{\"gameId\":\"P\",\"drawNr\":\"0129\",	\"status\":\"ACCEPTED\",\"text\":\"25/12/2015        09:28:51\n         GANE MAX\n     www.ganemax.com.py\n  Informe de Resultados\n        PREMIO\n FECHA:17/09/2015 SORTEO #0129\n01-02-03-06-08-09-11-12-16-19\n\n  Division    #Ganadores Premio\n  1         0   P.Acumulado\n  2         1           Gs 100.000\n  3         1            Gs 10.000\n  4        13             Gs 2.000\n\n Pozo Estimado   Gs 3.060.000.000\"}");
