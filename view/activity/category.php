

<div class="container-middle container-info no-header">

    <h1 id="page-name"class="titel-header">
        <?php echo taal($category['naam_nl'],$category['naam_fr'],$category['naam_en']);
        ?>

    </h1>
<div class="titel-img-container">
    <img class="titel-img" src="assets/images/titel-underline.png">
    </div>

   
<div class="content_info">
        

    <?php switch($_SESSION[ 'session_taal']){

     case "NL": 
     echo $category[ 'inhoud_nl'];
      break; 

      case "FR": 
      echo $category[ 'inhoud_fr']; 
      break; 

      case "ENG": echo $category[ 'inhoud_en']; 
      break; 
} ?>



    <div id="grid-feesten" class="container-sub-grid">
        <div class="grid">
            <div class="row gridFlex">

                <?php 
                if(isset($activities)){ 
                  foreach ($activities as $activitySub) { 
                        echo "<div class=\"grid-sub\">"; 
                        echo "<img class=\"subcategory-img\" 
                        src=\"assets/images/activityPhotos/{$activitySub['afbeelding']}._th.jpg \">";
                         echo "<a href=\"index.php?page=globalItem&id={$activitySub['id']}\" class=\"gridLink-sub\">"; 
                         echo "<div class=\"overlay-img\">"; 
                         echo "<span>"; 
                taal($activitySub['naam_nl'],$activitySub['naam_fr'],$activitySub['naam_en']); 
                echo "</span>"; 
                echo "</div></a></div>"; 
          } 
    } ?>

            </div>
        </div>
    </div>

  


