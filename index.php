<?php

date_default_timezone_set('Europe/Zurich');

echo "Hello World!<br />";
echo sprintf("Es ist %s, der %s, Uhrzeit: %s", date("l"), date("d.m.Y"), date("H:i:s"));
