<?php
define('DB_SERVER', 'ec2-107-21-214-26.compute-1.amazonaws.com');
define('DB_USERNAME', 'ytqxoklggjeast');
define('DB_PASSWORD', '9dd55df2302369ea49bcd809888f47511120951b18093cc8c8144d2bfa1d7758');
define('DB_NAME', 'd396l8dl243k0j');

/* Attempt to connect to PostgreSQL database */
$link = pg_connect("host=".DB_SERVER." dbname=". DB_NAME ." user=" . DB_USERNAME . " password=" .DB_PASSWORD. "")
		or die('Could not connect1: ' . pg_last_error());
?>
