<?php
if(!isset($_SESSION)){
  session_start();
}

// connect to the database
$db = mysqli_connect('localhost', 'root', '12345', 'events');
?>