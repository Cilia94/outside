

<div class="container-middle container-info no-header">

    <h1 id="page-name"class="titel-header">
        <?php echo taal('Zoekresultaten voor ','Zoekresultaten voor ','Zoekresultaten voor ');
        echo "'" . $_GET['s'] . "'";
        ?>


    </h1>
<div class="titel-img-container">
    <img class="titel-img" src="assets/images/titel-underline.png">
    </div>

   
<div class="content_info">
    <?php //echo taal($category['inhoud_nl'],$category['inhoud_fr'],$category['inhoud_en']); ?>



    <div id="grid-feesten" class="container-sub-grid">
        <div class="grid">
            <div class="row gridFlex">

                <?php 
                if(isset($activities)){ 
                  foreach ($activities as $activitySub) { 
                    if($activitySub['id']){
                        echo "<div class=\"grid-sub\">"; 
                        echo "<img width=\"200px\" height=\"200px\" class=\"subcategory-img lazyload\" 
                        src=\"assets/images/activityPhotos/{$activitySub['afbeelding']}_th.jpg \">";
                         $name = preg_replace('/\s+/', '', taal($activitySub['naam_nl'],$activitySub['naam_fr'],$activitySub['naam_en']));
                         echo "<a href=\"index.php?page=activiteit&id={$activitySub['id']}&name=" . $name . "\" class=\"gridLink-sub\">";
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

  


