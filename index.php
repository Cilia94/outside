<?php

function taal($nl,$fr,$eng){
  
        switch($_SESSION['session_taal']){
            case "NL":
            
            return $nl;
             break; 

            case "FR":
            

            return $fr;
             break; 

            case "ENG":
            

            return $eng;
             break;
            } 

}

error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);


session_start();
//unset($_SESSION['session_taal']);


define('DS', DIRECTORY_SEPARATOR);
define('WWW_ROOT', __DIR__ . DS);

$routes = array(
  'home' => array(
    'controller' => 'Page',
    'action' => 'index'
  ),

  'overviewType' => array(
    'controller' => 'Page',
    'action' => 'overviewType'
  ),

  'contact' => array(
    'controller' => 'Page',
    'action' => 'contact'
  ),

  'activity' => array(
    'controller' => 'Activity',
    'action' => 'activity'
  ),

  'overview' => array(
    'controller' => 'Activity',
    'action' => 'overview'
  ),

  'aanvragen' => array(
    'controller' => 'Activity',
    'action' => 'aanvragen'
  ),

  'feesten' => array(
    'controller' => 'Page',
    'action' => 'feesten'
    ),

   'adventurePark' => array(
    'controller' => 'Page',
    'action' => 'adventurePark'
    ),

  'categorie' => array(
    'controller' => 'Activity',
    'action' => 'categorie'
    ),

  'locatie' => array(
    'controller' => 'Activity',
    'action' => 'locatie'
    ),

  'locaties' => array(
    'controller' => 'Activity',
    'action' => 'locaties'
    ),

  'globalItem' => array(
    'controller' => 'Activity',
    'action' => 'globalItem'
    ),

  'search' => array(
    'controller' => 'Activity',
    'action' => 'search'
    ),

  'all' => array(
    'controller' => 'Activity',
    'action' => 'all_activities'
    ),

  'allLocations' => array(
    'controller' => 'Activity',
    'action' => 'all_locations'
    ),

   'filter' => array(
    'controller' => 'Activity',
    'action' => 'filterActivities'
    )
  
  
  

  
  
);

if(empty($_GET['page'])) {
  $_GET['page'] = 'home';
}
if(empty($routes[$_GET['page']])) {
  header('Location: index.php');
  exit();
}

$route = $routes[$_GET['page']];
$controllerName = $route['controller'] . 'Controller';

require_once WWW_ROOT . 'controller' . DS . $controllerName . ".php";

if (!isset($_SESSION['session_taal'])) {
  $_SESSION['session_taal'] = "NL";
  //echo $_SESSION['session_taal'];
}



$controllerObj = new $controllerName();
$controllerObj->route = $route;
$controllerObj->filter();
$controllerObj->render();
