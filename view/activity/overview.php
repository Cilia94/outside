<div class="intro-image">
    <div class="header-image-activity">
    </div>
</div>


<div class="container-middle container-feesten">
    <h1 class="titel-header">
        <?php 
        switch($_SESSION['session_taal']){
            case "NL":
           echo "Outdoor Activiteiten";
             break; 

            case "FR":
            
            echo "Fêtes";
            break; 

            case "ENG":
            echo "Parties";
            break;
            } ?>


        </h1>

    <img class="titel-img" src="css/assets/images/titel-underline.png">


</div>

<div id="grid-feesten" class="container-sub-grid">
   <?php if(isset($activities)) {

        if(empty($activities)) {
      echo "<p>Er zijn geen foto's voor deze activiteit</p>";
    }else{
?>
    <div class="grid">
        <div class="row gridFlex">


<?php foreach ($activities as $activity){ 
            echo "<div class=\"grid-sub\">";

            echo "<img class=\"subcategory-img\" 
                src=\"css/assets/images/activityPhotos/{$activity['afbeelding']}\">";
                
             echo  "<a href=\"index.php?page=activity&id={$activity['id']}\" 
                class=\"gridLink-sub\">";
                  echo  "<div class=\"overlay-img\">
                        <span>";

        switch($_SESSION['session_taal']){
            case "NL":
           echo $activity['naam_nl'];
             break; 

            case "FR":
            
            echo "Fêtes";
            break; 

            case "ENG":
            echo "Bachelor Parties";
            break;
            } ?>
        </span>
                    </div>
                </a>
            </div>
            <?php } ?>

   

        </div>
    </div>
<?php }
}
?>
</div>
<div class="clear">&nbsp;</div>