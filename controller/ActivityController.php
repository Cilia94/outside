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
        die();


    }

    public function all_prices(){

       $results = $this->activityDAO->selectAllPrices();           
        header('Content-Type: application/json');
        echo json_encode($results);
        die();


    }

    public function all_category_categories(){

       $results = $this->categoryDAO->selectAllCategoriesWithActivities();
        header('Content-Type: application/json');
        echo json_encode($results);
        die();

    }

    public function get_prices_of_activity(){
        $prices = $this->activityDAO->getRegularPricesById($_POST['id']);
        header('Content-Type: application/json');
        echo json_encode($prices);
        die();
    }

    public function all_other_data(){
       $resultsActivities = $this->activityDAO->selectAll();
       $resultsCategories = $this->categoryDAO->selectAllCategoriesWithActivities();
       $resultsLocations = $this->locationDAO->selectAllLocationsWithActivities();
       $resultsAllLocations = $this->locationDAO->selectAll();
       
       //$resultsPrices = $this->categoryDAO->selectAllPricesWithActivities();
       $resultsDurations = $this->categoryDAO->selectAllDurationsWithActivities();
       $dataObject = new ArrayObject();
       $dataObject->append($resultsActivities);
       $dataObject->append($resultsLocations);
       $dataObject->append($resultsCategories);
       
       $dataObject->append($resultsDurations);
       $dataObject->append($resultsAllLocations);
       //$dataObject->append($resultsPrices);

        header('Content-Type: application/json');
        echo json_encode($dataObject);
        die();

    }

    public function all_category_types(){

       $results = $this->categoryDAO->selectAllTypesWithActivities();
        header('Content-Type: application/json');
        echo json_encode($results);
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

    public function getPriceByActivityId(){

    
         //$results = $this->activityDAO->getRegularPrices($_POST);
            

        header('Content-Type: application/json');
            echo json_encode($results);
            die();
        
    }

    public function categoryType(){

        if(!empty($_GET['id'])){
        $this->set('category',$this->categoryDAO->selectByTypeId($_GET['id']));

        $idsOfActivities = $this->activityDAO->getByCategoryType($_GET['id']);
        $activitiesOfType = [];
        for ($i = 0; $i < count($idsOfActivities); $i++) {
            $contentActivity = $this->activityDAO->selectById($idsOfActivities[$i]['activiteitId']);
            array_push($activitiesOfType, $contentActivity);
            //$activitiesOfType-> append($contentActivity);
        }

        $this->set('activities',$activitiesOfType);
        //$this->set('activities',$idsOfActivities);
        }else{
            header('Location: index.php');
   
        }

    }

    public function globalItem(){

        if(!empty($_GET['id'])){

        //$locatiesFromDB = $this->locationDAO->selectAll();
        $thisItem = $this->activityDAO->selectById($_GET['id']);
        if($thisItem){

        $this->set('activity',$thisItem);
             $this->set("photos", $this->photoDAO->selectByActivityId($_GET['id']));
       
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
        $search_results = $this->activityDAO->search($_GET['s']);
        $this->set("activities", $search_results);
      

        // header('Content-Type: application/json');
        //     echo json_encode($search_results);
        //     die();


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