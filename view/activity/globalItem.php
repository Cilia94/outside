
<div class="intro-image">
    <div class="header-image-activity masked" style="background-image: url('assets/images/activityPhotos/<?php echo $activity['afbeelding_header'];?>.jpg')">
    </div>

</div>

<div class="container-middle container-info">

    <h1 id="page-name"class="titel-header">
        <?php echo taal($activity['naam_nl'],$activity['naam_fr'],$activity['naam_en']);
        ?>

    </h1>
<div class="titel-img-container">
    <!--<img class="titel-img" src="assets/images/titel-underline.png">-->
	<img class="titel-img" src="assets/images/titel-img2.png">
    </div>
	
	<?php 	$prices_nl = explode(';', $activity['prijs_nl']);
			$prices_fr = explode(';', $activity['prijs_fr']);
			$prices_en = explode(';', $activity['prijs_en']);
			$price_titles_nl = explode(';', $activity['prijs_titel_nl']);
			$price_titles_fr = explode(';', $activity['prijs_titel_fr']);
			$price_titles_en = explode(';', $activity['prijs_titel_en']);
			$supplements_nl = explode(';', $activity['supplement_nl']) ;
			$supplements_fr = explode(';', $activity['supplement_fr']) ;
			$supplements_en = explode(';', $activity['supplement_en']) ;
			$supplement_titles_nl = explode(';', $activity['supplement_titel_nl']);
			$supplement_titles_en = explode(';', $activity['supplement_titel_fr']);
			$supplement_titles_fr = explode(';', $activity['supplement_titel_en']);
	?>
	

    <?php if( !empty(taal($prices_nl,$prices_fr,$prices_en)) | !empty($activity[ 'minAantal']) | !empty($activity[ 'locatieId']) | !empty($activity[ 'max-personen']) | !empty($activity[ 'duur']) | !empty($activity[ 'locatieId']) | !empty($activity[ 'idealePeriode']) | !empty($activity[ 'leeftijd'])){ 
      ?>
    <ul class="grid-praktisch">
	
		
		
		
		
		<?php
			for ($x = 0; $x < sizeof(taal($prices_nl,$prices_fr,$prices_en)); $x++) {
				?>
					<?php if(!empty(taal($prices_nl[$x],$prices_fr[$x],$prices_en[$x]))){ ?>
						<li>
							<i class="fa fa-eur" aria-hidden="true"></i>
							<span class="name-grid-item">
								<?php echo taal($price_titles_nl[$x],$price_titles_fr[$x],$price_titles_en[$x]); ?>
							</span>
							<span class="value-grid-item">
								<?php echo taal($prices_nl[$x],$prices_fr[$x],$prices_en[$x]); ?>
								
							</span>
						</li>
						<div class="clear">&nbsp;</div>

					<?php } ?>
				<?php
			}
		?> 
		
		
		<?php
			for ($x = 0; $x < sizeof(taal($supplements_nl,$supplements_fr,$supplements_en)); $x++) {
				?>
					<?php if(!empty(taal($supplements_nl[$x],$supplements_fr[$x],$supplements_en[$x]))){ ?>
						<li>
							<i class="fa fa-plus" aria-hidden="true"></i>
							<span class="name-grid-item">
								<?php echo taal($supplement_titles_nl[$x],$supplement_titles_fr[$x],$supplement_titles_en[$x]); ?>
							</span>
							<span class="value-grid-item">
								<?php echo taal($supplements_nl[$x],$supplements_fr[$x],$supplements_en[$x]); ?>
								
							</span>
						</li>
						<div class="clear">&nbsp;</div>

					<?php } ?>
				<?php
			}
		?> 
		
	
	
	
        <?php if(!empty($activity['minAantal'])){ ?>
        <li>
            <i class="fa fa-users" aria-hidden="true"></i>
            <span class="name-grid-item">
                <?php echo taal('Min. aantal personen','Min. aantal personen','Min. aantal personen'); ?>
            </span>
            <span class="value-grid-item">
                <?php echo $activity['minAantal']; ?>
                
            </span>
        </li>
        <div class="clear">&nbsp;</div>

        <?php } ?>

        <?php if(!empty(taal($activity['afspraak_nl'],$activity['afspraak_fr'],$activity['afspraak_en']))){ ?>
        <li>
            <i class="fa fa-map-marker" aria-hidden="true"></i>
            <span class="name-grid-item">
                Plaats van afspraak
            </span>
			
			<span class="value-grid-item">

                <?php echo taal($activity['afspraak_nl'],$activity['afspraak_fr'],$activity['afspraak_en']); ?>

            </span>

            <!--
            <span class="value-grid-item">
                <?php 
                // switch ($activity['locatieId']){
                //     case 0: echo "Outside Adventure Park <br>(Westouterseweg 3, 8970 Poperinge)";
                //     break;

                //     case 1: echo "Outside Adventure Park <br>(Westouterseweg 3, 8970 Poperinge)";
                //     break;

                //     default: echo "Outside Adventure Parkje <br>(Westouterseweg 3, 8970 Poperinge)";
                
                // } 
                ?>
                
            </span>
        

		
        <?php for ($i = 0; $i < count($activity['adressen']); $i++){
            echo "<span class=\"value-grid-item\">";
            echo $activity['adressen'][$i];
            echo "</span>";

        }?>
		-->
		
        </li>
        <div class="clear">&nbsp;</div>

        <?php } ?>

        <?php if(!empty(taal($activity['duur_nl'],$activity['duur_fr'],$activity['duur_en']))){ ?>
        <li>
            <i class="fa fa-clock-o" aria-hidden="true"></i>
            <span class="name-grid-item">

               <?php echo taal("Duur","Duration","Duration"); ?>

            </span>
            <span class="value-grid-item">

                <?php echo taal($activity['duur_nl'],$activity['duur_fr'],$activity['duur_en']); ?>

            </span>
        </li>
        <div class="clear">&nbsp;</div>

        <?php } ?>

        <?php if(!empty(taal($activity['periode_nl'],$activity['periode_fr'],$activity['periode_en']))){ ?>
        <li>
            <i class="fa fa-calendar" aria-hidden="true"></i>
            <span class="name-grid-item">
                <?php echo taal("Ideale periode","Ideale periode","Ideale periode"); ?>
        </span>
            <span class="value-grid-item">
                <?php echo taal($activity['periode_nl'],$activity['periode_fr'],$activity['periode_en']); ?>
        </span>
        </li>
        <div class="clear">&nbsp;</div>

        <?php } ?>

        <?php //if(!empty($activity[ 'max-personen'])){ ?>
        <!-- <li>
            <i class="fa fa-plus-circle" aria-hidden="true"></i>
            <span class="name-grid-item">
                In optie
        </span>
            <span class="value-grid-item"> 
                Catering – zie prijslijst
        </span>
        </li>
        <div class="clear">&nbsp;</div> -->

        <?php //} ?>

        <?php if(!empty($activity['leeftijd'])){ ?>
        <li>
            <i class="fa fa-child" aria-hidden="true"></i>
            <span class="name-grid-item">
                <?php echo taal("Leeftijd","Age","Age"); ?>
        </span>
            <span class="value-grid-item">
                 <?php echo $activity['leeftijd']; ?>
        </span>
        </li>
        <div class="clear">&nbsp;</div>

        <?php } ?>

        <?php //if(!empty($activity[ 'max-personen'])){ ?>
        <!-- <li>
            <i class="fa fa-calendar" aria-hidden="true"></i>
            <span class="name-grid-item">
                Duur
        </span>
            <span class="value-grid-item">
                3 à 4 uur
        </span>
        </li>
        <div class="clear">&nbsp;</div> -->

        <?php //} ?>

    </ul>
    <?php }else{
      //echo "no praktisch";
    } ?>
<div class="content_info">
        

    <?php switch($_SESSION[ 'session_taal']){

     case "NL": 
     echo $activity[ 'inhoud_nl'];
      break; 

      case "FR": 
      echo $activity[ 'inhoud_fr']; 
      break; 

      case "ENG": echo $activity[ 'inhoud_en']; 
      break; 
} ?>
<div id="append-programmas" class="">
       
     
    </div>
    <div class="opmerking-container">
    <i class="fa fa-info-circle bg-border opmerking-icon" aria-hidden="true"></i>
      <p id="append-opmerking"></p>
  </div>

<div class="prijzen_verwacht">
<ul id="append-prijzen" class="prijzen">
       
     
    </ul>

<?php include("verwacht_templates.php"); ?>

</div>
</div>

    <?php 

        

    echo "<div class=\"activity-photos\">";

    if(isset($photos)) { 
                  if(empty($photos)) { 
                       // echo "<p >Er zijn geen foto's voor deze activiteit</p>"; 
                  }else{ 
      ?>
       <!--
        <div class="photo-view-wrapper">
        <img src="" class="photo-view" alt="">
    </div>
        <div class="arrows">
            <i class="fa fa-arrow-circle-left arrow leftArrow" aria-hidden="true"></i>
            <p class="photo-index"><span class="index-current"></span> - <span class="index-max"></span>
            </p>
            <i class="fa fa-arrow-circle-right arrow rightArrow" aria-hidden="true"></i>
        </div>
        <div class="clear">&nbsp;</div>
    -->
    <h1 class="titel-header">Fotos</h1>

    <div class="titel-img-container">
    <img class="titel-img" src="assets/images/titel-underline.png">
    </div>
    <p class="info-photos">Klik op een foto om hem in ware grote te bekijken</p>

        <div class="activity-photos-grid">
            <?php
           
                        foreach ($photos as $photo){ 
                            echo "<a href=\"assets/images/activityPhotos/{$photo['bestandsnaam']}\">";
                        echo "<div class=\"thumbOverlay\">";
        echo "<img src=\"assets/images/activityPhotos/{$photo['bestandsnaam']}\" class=\"thumb\" alt=\"\">";
        echo "</div>";
        echo "</a>";
                  } 
            }
             } 
             ?>

        </div>
    </div>



<?php include "templates_prijzen_programmas.php"; ?>
