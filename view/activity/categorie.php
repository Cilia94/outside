<?php

 switch($_SESSION['session_taal']){
            case "NL":
            
            echo $category['content_nl'];
             break; 

            case "FR":
            

            echo $category['content_fr'];
             break; 

            case "ENG":
            

            echo $category['content_eng'];
             break;
            } 

?>