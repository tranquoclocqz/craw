<?php
require 'vendor/autoload.php';
include 'functions.php';
include 'simple_html_dom.php';
$db = new PDODb(['type' => 'mysql',
	'host'                  => '127.0.0.1',
	'username'              => 'root',
	'password'              => '',
	'dbname'                => 'ey_khanhvyhome',
	'port'                  => 3306,
	'prefix'                => 'ey_',
	'charset'               => 'utf8']);