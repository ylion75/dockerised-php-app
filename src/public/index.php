<?php

$host = 'database';
$user = 'root';
$password = 'example';

$connection = new mysqli($host,$user,$password);
if($connection->connect_error) {
    echo 'Connection to MySql database failed' . $connection->connect_error;
}
echo 'Successfully connected to MySql database';
