<?php
ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);     
ini_set("user_agent","Mozilla/5.0 (Windows NT 6.1; rv:8.0) Gecko/20100101 Firefox/8.0");
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