<!-- <div class="intro-image shadow ">
    <div class="header-image-outside inner-shadow masked "></div>
   <!--  <img class="header-image-logo" src="css/assets/images/logo-outside-white.png"> -->
</div> -->

<div class="container-middle container-aanbod no-header">
    <h1 class="titel-header">
        <?php 
        echo taal('Vind je activiteit','',''); 
        ?>
        </h1>
   
    <img class="titel-img" src="css/assets/images/titel-underline.png">


    <p>
    Lorem ipsum dolor sit amet, 
    consectetur adipisicing elit. 
    Libero, aliquid aspernatur, 
    sapiente doloribus praesentium vel. 
    Ipsa dolorem deleniti voluptatibus fugit, 
    explicabo ipsum quos, nam commodi officia 
    illo iste numquam sunt.</p>


<div class="parameters">

  <div class="parameter">
    <span>
      <?php echo taal('Type','',''); ?></span>
    <select class="parameter-input" id="category_filter">
      <option value="all">Alle</option>
      <option value="1">Activiteiten</option>
      <option value="5">Scholen</option>
      <option value="easy-leisure">Easy Leisure</option>
    </select>
  </div>



<div class="parameter">
  <i class="fa fa-map-marker" aria-hidden="true"></i>
            
    <span>
      <?php echo taal('Locatie','',''); ?>
    </span>
    <select class="parameter-input" id="location_filter">
      <option value="all">Alle</option>
      <option value="own-location">Eigen locatie</option>
      <option value="1">Poperinge</option>
      <option value="2">Heuvelland</option>
    </select>
  </div>

  <div class="parameter">
  <i class="fa fa-users" aria-hidden="true"></i>
            
    <span>
      <?php echo taal('Aantal deelnemers','',''); ?>
    </span>
    <input id="participants_filter" class="parameter-input" type="number" min="1" max="100">
    <button class="resetAantal">Reset</button>
    
  </div>

  <div class="parameter">
  <i class="fa fa-map-marker" aria-hidden="true"></i>
            
    <span>
      <?php echo taal('Duur','',''); ?></span>

    <select class="parameter-input" id="duration_filter">
      <option value="all">Alle</option>
      <option value="1">Een aantal uren</option>
      <option value="2">Een halve dag</option>
      <option value="3">Een hele dag</option>
      <option value="3">Meerdere dagen</option>
    </select>
  </div>

   <div class="parameter">
  <i class="fa fa-map-marker" aria-hidden="true"></i>
            
    <span>
      <?php echo taal('Prijsklasse','',''); ?>
    </span>
    <select class="parameter-input" id="price_filter">
      <option value="all">Alle</option>
      <option value="1">10€ - 25€</option>
      <option value="2">25€ - 40€</option>
      <option value="3">40€ - 55€</option>
      <option value="3">> 55€</option>
    </select>
  </div>

  <!-- <div class="parameter">
    <span>Enkel Easy Leisure</span>
    <input type="checkbox" id="easy-leisure" class="parameter-input">
  </div> -->

   </div>
   <!--  <button class="test-search">ZOEKEN</button> -->
    <!--  <p>
                                        <a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a>
                                      </p> -->
</div>

    <div id="grid-filter" class="container-sub-grid">
        <div class="grid">
            <div id="filtered-activities" class="row gridFlex">
            
</div>
</div>
</div>


<script id="handlebars-template-activity" type="text/template">
  <!--
  <div class="grid-sub">

      <img class="subcategory-img" 
      src="css/assets/images/activityPhotos/{{afbeelding}}_th.jpg">
                         
      <a href="index.php?page=global&id={{id}}" class="gridLink-sub"> 
      <div class="overlay-img">
        <span> 
        {{naam_nl}} 

        </span>
        </div></a></div>
        -->

  <div class="grid-sub">
        <div class="filtered-item">
        <a href="index.php?page=global&id={{id}}">
        <section style="background-image:url('css/assets/images/activityPhotos/{{afbeelding}}_th.jpg')" class="filter-photo">
        
        </section>
        </a>
        <h3>
        <a href="index.php?page=global&id={{id}}">
        <?php 
        switch($_SESSION['session_taal']){

          case 'NL':
         
          
         ?>
         {{naam_nl}}

         <?php 

         break;

         case 'FR':
         ?>
          {{naam_fr}}
<?php
          break;
        

        case 'ENG':
         ?>
          {{naam_en}}
<?php
          break;
        }

        ?>
        </a></h3>




        <section class="icons-praktisch">
        <div class="filter-info-types">
        <article class="praktisch">
        <i class="fa fa-users" aria-hidden="true"></i>
        <span> vanaf {{minAantal}} personen</span>
        </article>
        </div>

        
        
       <div class="filter-info-types">
        {{#each locationsActivity}}
        <article class="praktisch">
         <i class="fa fa-map-marker" aria-hidden="true"></i>
         <span>
        {{this}}
        </span>
        </article>
        {{/each}}
        {{#if zelf_gekozen_locatie}}
        <article class="praktisch">
         <i class="fa fa-map-marker" aria-hidden="true"></i>
         <span>
         <strong>
        Op een locatie naar keuze
        </strong>
        </span>

        {{/if}}
        </div>
        
       
         
        

        </section>
        </div>
        </div>
</script>