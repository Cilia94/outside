<div class="intro-image">
    <div class="header-image-activity" style="background-image: url('css/assets/images/activityPhotos/Puketi-Night-Walk-012.jpg')">
    </div>

    <!--  <img src="assets/images/header-image-outside.png" class="header-image-activity">
                                  -->
    <!-- <div class="clear">&nbsp;</div> -->

</div>

<div class="container-middle container-info">
    <h1 class="titel-header">
        <?php echo $activity['naam_nl'];
        ?>

    </h1>
    <img class="titel-img" src="css/assets/images/titel-underline.png">

    <ul class="grid-praktisch">
        <?php //if(!empty($activity['minAantal'])){ ?>
        <li>
            <i class="fa fa-users" aria-hidden="true"></i>
            <span class="name-grid-item">
                Max. aantal personen
            </span>
            <span class="value-grid-item">
                <?php //echo $activity['minAantal']; ?>
                5 personen
            </span>
        </li>
        <div class="clear">&nbsp;</div>

        <?php //} ?>

        <?php //if(!empty($activity['locatieId'])){ ?>
        <li>
            <i class="fa fa-map-marker" aria-hidden="true"></i>
            <span class="name-grid-item">
                Plaats van afspraak



            </span>
            <span class="value-grid-item">
                <?php //switch ($activity['locatieId']){
                    //case 0: echo "Outside Adventure Park <br>(Westouterseweg 3, 8970 Poperinge)";
                    //break;
                //} 
                ?>
                Outside Adventure Park <br>(Westouterseweg 3, 8970 Poperinge)
            </span>
        </li>
        <div class="clear">&nbsp;</div>

        <?php //} ?>

        <?php //if(!empty($activity['max-personen'])){ ?>
        <li>
            <i class="fa fa-clock-o" aria-hidden="true"></i>
            <span class="name-grid-item">

                Duur

            </span>
            <span class="value-grid-item">

                3 à 4 uur

            </span>
        </li>
        <div class="clear">&nbsp;</div>

        <?php //} ?>

        <?php //if(!empty($activity['max-personen'])){ ?>
        <li>
            <i class="fa fa-calendar" aria-hidden="true"></i>
            <span class="name-grid-item">
                Ideale periode
        </span>
            <span class="value-grid-item">
                gans het jaar
        </span>
        </li>
        <div class="clear">&nbsp;</div>

        <?php //} ?>

        <?php //if(!empty($activity['max-personen'])){ ?>
        <li>
            <i class="fa fa-plus-circle" aria-hidden="true"></i>
            <span class="name-grid-item">
                In optie
        </span>
            <span class="value-grid-item"> 
                Catering – zie prijslijst
        </span>
        </li>
        <div class="clear">&nbsp;</div>

        <?php //} ?>

        <?php //if(!empty($activity['max-personen'])){ ?>
        <li>
            <i class="fa fa-child" aria-hidden="true"></i>
            <span class="name-grid-item">
                Leeftijd
        </span>
            <span class="value-grid-item">
                4e leerjaar t.e.m. 6e middelbaar
        </span>
        </li>
        <div class="clear">&nbsp;</div>

        <?php //} ?>

        <?php //if(!empty($activity['max-personen'])){ ?>
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
<p>
    <?php 
        switch($_SESSION['session_taal']){
            case "NL":
            echo $activity['inhoud_nl'];

             break; 

            case "FR":
            

            echo $activity['inhoud_fr'];
            break;

            case "ENG":

            echo $activity['inhoud_en'];
            break;
            } ?>
    </p>
    <!--  <p>
                                        <a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a>
                                      </p> -->
</div>



<div class="clear">&nbsp;</div>
<div class="activity-photos">

    <img src="" class="photo-view" alt="">
    <div class="arrows">
        <i class="fa fa-arrow-circle-left arrow leftArrow" aria-hidden="true"></i>
        <p class="photo-index"><span class="index-current"></span> - <span class="index-max"></span></p>
        <i class="fa fa-arrow-circle-right arrow rightArrow" aria-hidden="true"></i>
    </div>
    <div class="clear">&nbsp;</div>

    <div class="activity-photos-grid">
        <?php
         if(isset($photos)) {

        if(empty($photos)) {
      echo "<p>Er zijn geen foto's voor deze activiteit</p>";
    }else{
        foreach ($photos as $photo){

        //echo $photo['bestandsnaam'];
        //echo "<br>";
        echo "<div class=\"thumbOverlay\">";
        echo "<img src=\"css/assets/images/activityPhotos/{$photo['bestandsnaam']}\" class=\"thumb\" alt=\"\">";
        echo "</div>";
        }
    }
}
        ?>

        
        <!-- <div class="thumbOverlay">
            <img src="css/assets/images/IMG_1259.jpg" class="thumb" alt="">
        </div>
        <div class="thumbOverlay">
            <img src="css/assets/images/brendonnicotine.jpg" class="thumb" alt="">
        </div> 
        <div class="thumbOverlay">
            <img src="css/assets/images/header-image-outside-2.png" class="thumb" alt="">
        </div>
        <div class="thumbOverlay">
            <img src="css/assets/images/placeholder.jpeg" class="thumb" alt="">
        </div>
        <div class="thumbOverlay">
            <img src="css/assets/images/placeholder200.jpeg" class="thumb" alt="">
        </div>
        <div class="thumbOverlay">
            <img src="css/assets/images/woodbg.png" class="thumb" alt="">
        </div>
-->
    </div>
</div>
<hr>
<!-- <footer>
                                                        <p>&copy; Outside Adventures</p>
                                                      </footer> -->