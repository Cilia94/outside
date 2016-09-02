<?php

require_once WWW_ROOT . 'controller' . DS . 'Controller.php';
require_once WWW_ROOT  . DS . 'PHPMailer-master' . DS . 'PHPMailerAutoload.php';


class PageController extends Controller {

      private $mail;

    
    

	function __construct() {
		 $this->mail = new PHPMailer;
	}

    public function index(){


        
    }

    public function contact(){

    }

   

    public function feesten(){
        
    }

    public function vrijgezellen(){


        
    }

    public function overviewType() {

        
    }

      

}