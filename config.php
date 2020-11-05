<?php
define('DB_SERVER', 'ec2-50-17-90-177.compute-1.amazonaws.com');
define('DB_USERNAME', 'zdismzsgeiddpo');
define('DB_PASSWORD', 'bfa91e16d954124856d2bad8b27b0254edaa4562dd3acb0ddf18401005c73936');
define('DB_NAME', 'dbki8bd14omrhb');

/* Attempt to connect to PostgreSQL database */
$link = pg_connect("host=".DB_SERVER." dbname=". DB_NAME ." user=" . DB_USERNAME . " password=" .DB_PASSWORD. "")
		or die('Could not connect1: ' . pg_last_error());
?>
