<?php

	/************************************************************
	* 															*
	*	INDEX 													*
	* 															*
	*	This loads all the necessary files for TRACK and every 	*
	* 	URL will have this file displayed in the serach bar 	* 
	* 	before it jumps to any other file/directory 			*
	*  															*
	*	By: Aaron Pillert 										*
	* 															*
	************************************************************/
 
	define('DS', DIRECTORY_SEPARATOR); // "/"
	define('HOME', dirname(__FILE__)); // "/_apps/track1.5"

	ini_set('display_errors', 1);

	require_once HOME . DS . 'config.php';
	require_once HOME . DS . 'utilities' . DS . 'bootstrap.php';

	function __autoload($class){

		if(file_exists(HOME . DS . 'utilities' . DS . strtolower($class) . '.php')){

			require_once HOME . DS . 'utilities' . DS . strtolower($class) . '.php';

		}else if(file_exists(HOME . DS . 'models' . DS . strtolower($class) . '.php')){

			require_once HOME . DS . 'models' . DS . strtolower($class) . '.php';

		}else if (file_exists(HOME . DS . 'controllers' . DS . strtolower($class) . '.php')){

			require_once HOME . DS . 'controllers'  . DS . strtolower($class) . '.php';

		}

	}