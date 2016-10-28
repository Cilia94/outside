
<?php include 'helpfunctions.php' ?>

<div class="container-middle container-info no-header">

    <h1 id="page-name"class="titel-header">
        <span><?php echo $category['naam'];
        ?></span>
<div class="titel-img-container">
    <img class="titel-img" src="assets/images/titel-underline.png">
    </div>
    </h1>


   
<div class="content_info">
	<div class="center-text">
    <?php echo $category['inhoud']; ?>
	

    <div id="grid-feesten" class="container-sub-grid">
        <div class="grid">
            <div class="row gridFlex">
				

                <?php 
				//<span><?php echo taal($category['type'],$category['type'],$category['type']);
                if(isset($activities)){ 
					
                  foreach ($activities as $activitySub) { 
                    if($activitySub['id']){
                        echo "<div class=\"grid-sub\">"; 
                        echo "<img width=\"200px\" height=\"200px\" class=\"subcategory-img lazyload\" 
                        src=\"assets/images/activityPhotos/{$activitySub['afbeelding']}_th.jpg \">";
                         //$name = preg_replace('/\s+/', '', taal($activitySub['naam_nl'],$activitySub['naam_fr'],$activitySub['naam_en']));
						 $name = slugify($activitySub['naam']);
						 
                         //echo "<a href=\"index.php?page=activiteit&id={$activitySub['id']}&name=" . $name . "\" class=\"gridLink-sub\">";echo "<div class=\"overlay-img\">"; 
						 echo "<a href=\"" . $category['url'] . "/" . $activitySub['id'] . "/" . $name . "\" class=\"gridLink-sub\">";echo "<div class=\"overlay-img\">"; 
						 //activiteit/'.$_GET['id'].'/'.$thisItem['naam_nl']
						 
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
</div>
  


