<?php

require_once WWW_ROOT . 'controller' . DS . 'Controller.php';
require_once WWW_ROOT . 'dao' . DS . 'ActivityDAO.php';
require_once WWW_ROOT . 'dao' . DS . 'PhotoDAO.php';
require_once WWW_ROOT . 'dao' . DS . 'LocationDAO.php';
require_once WWW_ROOT . 'dao' . DS . 'CategoryDAO.php';


class ActivityController extends Controller {

    private $activityDAO;
    private $photoDAO;
    private $categoryDAO;
    

    function __construct() {
        $this->activityDAO = new ActivityDAO();
        $this->photoDAO = new PhotoDAO();
        $this->categoryDAO = new CategoryDAO();
        $this->locationDAO = new LocationDAO();
    }



    public function index(){



        
    }

    

    

     public function all_activities(){

       $results = $this->activityDAO->selectAll();
            

        header('Content-Type: application/json');

        echo json_encode($results);
        //exit;
        die();


    }

    public function all_locations(){

       $results = $this->locationDAO->selectAll();
            

        header('Content-Type: application/json');

        echo json_encode($results);
        //exit;
        die();


    }

    public function locaties(){

        $this->set('locaties',$this->locationDAO->selectAll());
        

    }

    public function filterActivities(){

        $this->set('locaties',$this->locationDAO->selectAll());
        


        
    }

    // public function all_categories(){
    //     //nog veranderen
    //     $this->set('categories',$this->categoryDAO->selectAll());
        

    // }

    public function locatie(){

if(!empty($_GET['id'])){
    $locatie = $this->locationDAO->selectById($_GET['id']);
    if($locatie){
        $this->set('locatie',$locatie);
        
        $this->set('activities',$this->activityDAO->selectByLocation($_GET['id']));
    }else{
        header('Location: index.php?page=locaties');

    }
        //$this->set('activities',$this->activityDAO->selectAll());
       
       } 

       //$this->set('activities',$this->activityDAO->selectAll());
       

    }

     public function category(){

        if(!empty($_GET['id'])){
        $this->set('category',$this->categoryDAO->selectById($_GET['id']));
        $this->set('activities',$this->activityDAO->getByCategory($_GET['id']));
        }else{
            header('Location: index.php');
   
        }

    }

    public function globalItem(){

        if(!empty($_GET['id'])){

        //$locatiesFromDB = $this->locationDAO->selectAll();
        $thisItem = $this->activityDAO->selectById($_GET['id']);
        if($thisItem){

  //       if($thisItem['locatieId'] != "0"){

  //           $locations = explode(",", $thisItem['locatieId']);
  //           $locationsActivity = [];

  //           for($i = 0; $i< count($locations); $i++){
  //     if($locations[$i] != "" && $locations[$i] != 0){

  //       for($j = 0; $j< count($locatiesFromDB); $j++){
  //           if($locatiesFromDB[$j]['id'] == $locations[$i]){
  //              array_push($locationsActivity, $locatiesFromDB[$j]['adres']);

  //           }
  //       }
  //     }
  // }
  
   
  //       $thisItem['adressen'] = $locationsActivity;

  //       }

        $this->set('activity',$thisItem);
        




        // switch($thisItem['grid_of']){

        //     case "photos":
             $this->set("photos", $this->photoDAO->selectByActivityId($_GET['id']));
        // break;

        //     case "categories":
        //     $this->set("categories", $this->activityDAO->selectByCategoryId($_GET['id']));
        // break;

        //     case "activities":
        //     $this->set("activities", $this->activityDAO->selectByActivityId($_GET['id']));
        // break;
        // }
    }else{
        header('Location: index.php');
    }

        
        }else{
            header('Location: index.php');
        //$this->set('images',$this->imageDAO->selectByTourId(1));
        }

    }

    public function search(){

        //$this->set('search_results',$this->activityDAO->search($_POST));
        $search_results = $this->activityDAO->search($_POST);
            

        header('Content-Type: application/json');
            echo json_encode($search_results);
            die();


    }

    public function categoryOverview(){

        $this->set("activities", $this->activityDAO->getByCategory($_GET['id']));
        

    }


    public function overview(){

        $this->set("activities", $this->activityDAO->selectAll());
        

    }

    

    public function none(){
        
    }

    public function aanvragen(){
        
    }

    

    public function activity() {

        
if(!empty($_GET['id'])){
        $this->set("activity", $this->activityDAO->selectById($_GET['id']));
        $this->set("photos", $this->photoDAO->selectByActivityId($_GET['id']));
        }else{
           
        }
        
    }

       

}