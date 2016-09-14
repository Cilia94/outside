

<div class="container-middle container-info no-header">

    <h1 id="page-name"class="titel-header">
        <?php echo taal($category['type_nl'],$category['type_fr'],$category['type_en']);
        ?>

    </h1>
<div class="titel-img-container">
    <img class="titel-img" src="assets/images/titel-underline.png">
    </div>

   
<div class="content_info">
    <?php echo taal($category['inhoud_nl'],$category['inhoud_fr'],$category['inhoud_en']); ?>



    <div id="grid-feesten" class="container-sub-grid">
        <div class="grid">
            <div class="row gridFlex">

                <?php 
                if(isset($activities)){ 
                  foreach ($activities as $activitySub) { 
                    if($activitySub['id']){
                        echo "<div class=\"grid-sub\">"; 
                        echo "<img class=\"subcategory-img\" 
                        src=\"assets/images/activityPhotos/{$activitySub['afbeelding']}_th.jpg \">";
                         echo "<a href=\"index.php?page=globalItem&id={$activitySub['id']}\" class=\"gridLink-sub\">"; 
                         echo "<div class=\"overlay-img\">"; 
                         echo "<span>"; 
                echo taal($activitySub['naam_nl'],$activitySub['naam_fr'],$activitySub['naam_en']); 
                echo "</span>"; 
                echo "</div></a></div>"; 
          } 
      }
    } ?>

            </div>
        </div>
    </div>

  


