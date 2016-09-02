<?php

require_once WWW_ROOT . 'controller' . DS . 'Controller.php';
require_once WWW_ROOT . 'dao' . DS . 'ActivityDAO.php';
require_once WWW_ROOT . 'dao' . DS . 'PhotoDAO.php';
require_once WWW_ROOT . 'dao' . DS . 'LocationDAO.php';


class ActivityController extends Controller {

    private $activityDAO;
    private $photoDAO;
    

    function __construct() {
        $this->activityDAO = new ActivityDAO();
        $this->photoDAO = new PhotoDAO();
        $this->locationDAO = new LocationDAO();
    }

//     public function possibleTypes( $table, $field )
// {
//     $type = $this->db->query( "SHOW COLUMNS FROM {$table} WHERE Field = '{$field}'" )->row( 0 )->Type;
//     preg_match("/^enum\(\'(.*)\'\)$/", $type, $matches);
//     $enum = explode("','", $matches[1]);
//     return $enum;
// }

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

     public function categorie(){

        if(!empty($_GET['id'])){
        $this->set('category',$this->activityDAO->getCategoryPage($_GET['id']));
        }else{
        //$this->set('images',$this->imageDAO->selectByTourId(1));
        }

    }

    public function global(){

        if(!empty($_GET['id'])){

        $locatiesFromDB = $this->locationDAO->selectAll();
        $thisItem = $this->activityDAO->selectById($_GET['id']);
        if($thisItem){

        if($thisItem['locatieId'] != "0"){

            $locations = explode(",", $thisItem['locatieId']);
            $locationsActivity = [];

            for($i = 0; $i< count($locations); $i++){
      if($locations[$i] != "" && $locations[$i] != 0){

        for($j = 0; $j< count($locatiesFromDB); $j++){
            if($locatiesFromDB[$j]['id'] == $locations[$i]){
               array_push($locationsActivity, $locatiesFromDB[$j]['adres']);

            }
        }
      }
  }
  
    //if($thisItem['zelf_gekozen_locatie'] == 1){ 
    //array_push($locationsActivity, "Locatie naar keuze!");

    //}
        
        $thisItem['adressen'] = $locationsActivity;

        }

        $this->set('activity',$thisItem);
        




        switch($thisItem['grid_of']){

            case "photos":
            $this->set("photos", $this->photoDAO->selectByActivityId($_GET['id']));
        break;

            case "categories":
            $this->set("categories", $this->activityDAO->selectByCategoryId($_GET['id']));
        break;

            case "activities":
            $this->set("activities", $this->activityDAO->selectByActivityId($_GET['id']));
        break;
        }
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

        $this->set("activities", $this->activityDAO->selectByCategoryId($_GET['id']));
        

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