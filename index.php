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

  'category' => array(
    'controller' => 'Activity',
    'action' => 'category'
    ),

  'categoryType' => array(
    'controller' => 'Activity',
    'action' => 'categoryType'
    ),

  'locatie' => array(
    'controller' => 'Activity',
    'action' => 'locatie'
    ),

  'locaties' => array(
    'controller' => 'Activity',
    'action' => 'locaties'
    ),

  'activiteit' => array(
    'controller' => 'Activity',
    'action' => 'activiteit'
    ),

  'search' => array(
    'controller' => 'Activity',
    'action' => 'search'
    ),

  'all' => array(
    'controller' => 'Activity',
    'action' => 'all_activities'
    ),

  'all_category_categories' => array(
    'controller'=> 'Activity',
    'action'=> 'all_category_categories'
     ),

  'all_other_data' => array(
    'controller'=> 'Activity',
    'action'=> 'all_other_data'
     ),

  'get_prices_of_activity' => array(
    'controller'=> 'Activity',
    'action'=> 'get_prices_of_activity'
     ),

  'all_category_types' => array(
    'controller'=> 'Activity',
    'action'=> 'all_category_types'
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
