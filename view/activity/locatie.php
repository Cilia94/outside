  <div class="container-middle container-aanbod no-header">
    <h1 class="titel-header">
        <?php 
        switch($_SESSION['session_taal']){
            case "NL":
            echo $locatie['naam_nl'];
            ?>

            
            <?php break; 

            case "FR":
            echo $locatie['naam_fr'];
            ?>

            Contact
            <?php break; 

            case "ENG":
            echo $locatie['naam_en'];
            ?>

            Contact
            <?php break;
            } ?>


        </h1>
   
    <img class="titel-img" src="css/assets/images/titel-underline.png">

  <div id="grid-feesten" class="container-sub-grid">
        <div class="grid">
            <div class="row gridFlex">

                <?php 
                if(isset($activities)){ 
                  foreach ($activities as $activitySub) { 
                 
                        echo "<div class=\"grid-sub\">"; 
                        echo "<img class=\"subcategory-img\" 
                        src=\"css/assets/images/activityPhotos/{$activitySub['afbeelding']}_th.jpg \">";
                         echo "<a href=\"index.php?page=globalItem&id={$activitySub['id']}\" class=\"gridLink-sub\">"; 
                         echo "<div class=\"overlay-img\">"; 
                         echo "<span>"; 
                echo taal($activitySub['naam_nl'],$activitySub['naam_fr'],$activitySub['naam_en']); 
                echo "</span>"; 
                echo "</div></a></div>"; 
          } 
    }else{
      echo "no activ";
    } ?>

            </div>
        </div>
    </div>