<?php
	
error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);



define("WWW_ROOT",dirname(dirname(__FILE__)).DIRECTORY_SEPARATOR);
//require_once WWW_ROOT. "dao" .DIRECTORY_SEPARATOR. 'UsersDAO.php';
//require_once WWW_ROOT. "dao" .DIRECTORY_SEPARATOR. 'AfbeeldingDAO.php';
require_once WWW_ROOT. "api" .DIRECTORY_SEPARATOR. 'Slim'. DIRECTORY_SEPARATOR .'Slim.php';

\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();

//var_dump($_SESSION['user']);

require_once WWW_ROOT. "api" .DIRECTORY_SEPARATOR. 'routes' .DIRECTORY_SEPARATOR. 'activiteiten.php';
//require_once WWW_ROOT. "api" .DIRECTORY_SEPARATOR. 'routes' .DIRECTORY_SEPARATOR. 'users.php';

$app->run();

?>