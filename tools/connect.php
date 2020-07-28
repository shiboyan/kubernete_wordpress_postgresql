<?php
define( PG4WP_ROOT ,  '/var/www/html/wp-content/pg4wp' );
require_once( PG4WP_ROOT.'/driver_pgsql.php');
$dbhost='wordpress-postgresql:5432';
$dbuser='postgres';
$dbpassword='A_PASSWORD';
$new_link='ture';
$client_flags='0';
$dbh = wpsql_connect( $dbhost, $dbuser, $dbpassword, $new_link, $client_flags );
echo "================== dbh is : ". $dbh. "\n";
$sql='select name, age from test1;';
$res=wpsql_query($dbh,$sql);
echo "select res: ". $res . "\n";
$success=wpsql_select_db('postgres123', $dbh);
echo "value of select: ". $success. "\n";
