<div class="container-middle container-aanbod no-header">
    <h1 class="titel-header">
        <?php 
        switch($_SESSION['session_taal']){
            case "NL":
            ?>

            Onze locaties
            <?php break; 

            case "FR":
            ?>

            Onze locaties
            <?php break; 

            case "ENG":
            ?>

            Onze locaties
            <?php break;
            } ?>


        </h1>
   
    <img class="titel-img" src="css/assets/images/titel-underline.png">

<div id="grid-feesten" class="container-sub-grid">
        <div class="grid">
            <div class="row gridFlex">
<?php 
                if(isset($locaties)){ 
                  foreach ($locaties as $locatie) { 



                        echo "<div class=\"grid-sub\">"; 
                        echo "<img class=\"subcategory-img\" 
                        src=\"css/assets/images/activityPhotos/{$locatie['afbeelding']}_th.jpg \">";
                         echo "<a href=\"index.php?page=locatie&id={$locatie['id']}\" class=\"gridLink-sub\">"; 
                         echo "<div class=\"overlay-img\">"; 
                         echo "<span>"; 
                echo taal($locatie['naam_nl'],$locatie['naam_fr'],$locatie['naam_en']); 
                echo "</span>"; 
                echo "</div></a></div>"; 
          } 
          ?>
      </div></div></div>
          <?php
    }else{
        echo "no locations found";
    } ?>


</div>