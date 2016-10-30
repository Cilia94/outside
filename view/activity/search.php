

<div class="container-middle container-info no-header">

    <h1 id="page-name"class="titel-header">
        <span><?php echo taal('Zoekresultaten voor ','Zoekresultaten voor ','Zoekresultaten voor ');
        echo "'" . $_GET['s'] . "'";
        ?></span>

<div class="titel-img-container">
    <img class="titel-img" src="/assets/images/titel-underline.png">
    </div>
    </h1>


   
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
                        src=\"/assets/images/activityPhotos/{$activitySub['afbeelding']}_th.jpg \">";

                         $name = preg_replace('/\s+/', '', $activitySub['naam']);
                         $categorie;
                         switch ($activitySub['categorieId']) {
                           case 1:
                             $categorie = 'activiteit';
                             break;
                            case 2:
                             $categorie = 'feesten';
                             break;
                            case 3:
                             $categorie = 'sportdag';
                             break;
                            case 4:
                             $categorie = 'vakantiehuis';
                             break;
                           
                           default:
                             $categorie = 'activiteit';
                             break;
                         }

                         echo "<a href=/". $categorie . "/{$activitySub['id']}/" . $name ." class=\"gridLink-sub\">";
                         echo "<div class=\"overlay-img\">"; 
                         echo "<span>"; 
                echo $activitySub['naam']; 
                echo "</span>"; 
                echo "</div></a></div>"; 
          } 
      }
    } ?>

            </div>
        </div>
    </div>

  


