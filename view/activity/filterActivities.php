<!-- <div class="intro-image shadow ">
    <div class="header-image-outside inner-shadow masked "></div>
   <!--  <img class="header-image-logo" src="css/assets/images/logo-outside-white.png"> -->
</div> -->

<div class="container-middle container-aanbod no-header">
    <h1 id="page-name" class="titel-header">
        <?php 
        echo taal('Vind je activiteit','',''); 
        ?>
        </h1>
   
    <img class="titel-img" src="css/assets/images/titel-underline.png">


<!--     <p>
    Lorem ipsum dolor sit amet, 
    consectetur adipisicing elit. 
    Libero, aliquid aspernatur, 
    sapiente doloribus praesentium vel. 
    Ipsa dolorem deleniti voluptatibus fugit, 
    explicabo ipsum quos, nam commodi officia 
    illo iste numquam sunt.</p> -->


<div class="parameters">

  <div class="parameter">
    <span>
      <?php echo taal('Type','',''); ?></span>
    <select class="parameter-input" id="category_filter">
      <option value="all"><?php echo taal('Alle','','All'); ?></option>
      <option value="1"><?php echo taal('Activiteiten','','Activities'); ?></option>
       <option value="2"><?php echo taal('Feesten','','Parties'); ?></option>
      <option value="3"><?php echo taal('Sportdag','',''); ?></option>
      <option value="4"><?php echo taal('Vakantiehuizen','',''); ?></option>
    </select>
  </div>



<div class="parameter">
  <i class="fa fa-map-marker" aria-hidden="true"></i>
            
    <span>
      <?php echo taal('Locatie','',''); ?>
    </span>
    <select class="parameter-input" id="location_filter">
      <option value="all"><?php echo taal('Alle','','All'); ?> </option>
     <!--  <option value="own-location">Eigen locatie</option> -->
      <option value="1">Heuvelland - Westhoek</option>
      <option value="2">Vlaanderen & De Kust</option>
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
 <i class="fa fa-clock-o" aria-hidden="true"></i>
            
    <span>
      <?php echo taal('Duur','',''); ?></span>

    <select class="parameter-input" id="duration_filter">
      <option value="all"><?php echo taal('Alle','','All'); ?></option>
      <option value="1">
       <?php echo taal('Enkele uren','',''); ?></option>
      <option value="2">
        <?php echo taal('Een halve dag','',''); ?></option>
      <option value="3">
        <?php echo taal('Een hele dag','',''); ?></option>
      <option value="4">
        <?php echo taal('Meerdere dag','',''); ?></option>
    </select>
  </div>

   <div class="parameter">
  <i class="fa fa-eur" aria-hidden="true"></i>
            
    <span>
      <?php echo taal('Prijsklasse','',''); ?>
    </span>
    <select class="parameter-input" id="price_filter">
      <option value="all"><?php echo taal('Alle','','All'); ?></option>
      <option value="1">€10 - €20</option>
      <option value="2">€21 - €30</option>
      <option value="3">€31 - €40</option>
      <option value="4">€41 - €60</option>
      <option value="5">€60+</option>
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

      <img class="subcategory-img lazyload" 
      src="css/assets/images/activityPhotos/{{afbeelding}}_th.jpg">
      <?php 
        switch($_SESSION['session_taal']){
          case 'NL':
         ?>              
      <a href="index.php?page=activiteit&id={{id}}&name={{naam_nl}}" class="gridLink-sub"> 
      <div class="overlay-img">
        <span> 
        {{naam_nl}} 

        </span>
        </div></a>
        <?php break; 
        case 'FR': ?>
        <a href="index.php?page=activiteit&id={{id}}&name={{naam_fr}}" class="gridLink-sub"> 
      <div class="overlay-img">
        <span> 
        {{naam_fr}} 

        </span>
        </div></a>

         <?php break; 
        case 'ENG': ?>

        <a href="index.php?page=activiteit&id={{id}}&name={{naam_en}}" class="gridLink-sub"> 
      <div class="overlay-img">
        <span> 
        {{naam_en}} 

        </span>
        </div></a>
        <?php break; } ?>


  </div>
        -->

  <div class="grid-sub">
        <div class="filtered-item">
        <a href="index.php?page=activiteit&id={{id}}&name={{naam_nl}}">
        <section style="background-image:url('assets/images/activityPhotos/{{afbeelding}}_th.jpg')" class="filter-photo">
        
        </section>
        </a>
        <h3>
        <a href="index.php?page=activiteit&id={{id}}&name={{naam_nl}}">
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
        {{#if minAantal}}
        <div class="filter-info-types">
        <article class="praktisch">
        <i class="fa fa-users" aria-hidden="true"></i>
        <span> <?php 
        switch($_SESSION['session_taal']){

          case 'NL':
         
          
         ?>
         vanaf {{minAantal}} personen

         <?php 

         break;

         case 'FR':
         ?>
          vanaf {{minAantal}} personen
<?php
          break;
        

        case 'ENG':
         ?>
          vanaf {{minAantal}} personen
<?php
          break;
        }

        ?></span>
        </article>
        </div>
        {{/if}}

        {{#if prijsklasseId}}
        <div class="filter-info-types">
        
        <article class="praktisch">
        <i class="fa fa-euro" aria-hidden="true"></i>

         <span>
         {{#switchPrijs prijsklasseId}}
         {{#casePrijs "1"}}
         €10-€20
        
        {{/casePrijs}}

        {{#casePrijs "2"}}
        €21-€30
        
        {{/casePrijs}}

        {{#casePrijs "3"}}
        €31-€40

        
        {{/casePrijs}}
        
        {{#casePrijs "4"}}
       €41-€60
        
       
        {{/casePrijs}}

        {{#casePrijs "5"}}
       €60+
        
       
        {{/casePrijs}}

        {{/switchPrijs}}
        </span>
        </article>
     
       
        
        </div>
         {{/if}}

         {{#if duurId}}
        <div class="filter-info-types">
        
        <article class="praktisch">
        <i class="fa fa-clock-o" aria-hidden="true"></i>

         <span>
         {{#switchPrijs duurId}}
         {{#casePrijs "1"}}
         <?php 
        switch($_SESSION['session_taal']){

          case 'NL': ?>
         Enkele uren
         <?php break;

         case 'FR': ?>
         Enkele uren
         <?php break;

        case 'ENG': ?>
         Enkele uren
         <?php break; }

        ?>
        
        {{/casePrijs}}

        {{#casePrijs "2"}}
         <?php 
        switch($_SESSION['session_taal']){

          case 'NL': ?>
         Een halve dag
         <?php break;

         case 'FR': ?>
         Een halve dag
         <?php break;

        case 'ENG': ?>
         Een halve dag
         <?php break; }

        ?>
        
        {{/casePrijs}}

        {{#casePrijs "3"}}
         <?php 
        switch($_SESSION['session_taal']){

          case 'NL': ?>
         De hele dag
         <?php break;

         case 'FR': ?>
         De hele dag
         <?php break;

        case 'ENG': ?>
         De hele dag
         <?php break; }

        ?>
        
        {{/casePrijs}}

        {{#casePrijs "4"}}
         <?php 
        switch($_SESSION['session_taal']){

          case 'NL': ?>
         Meerdere dagen
         <?php break;

         case 'FR': ?>
         Meerdere dagen
         <?php break;

        case 'ENG': ?>
         Meerdere dagen
         <?php break; }

        ?>
        
        {{/casePrijs}}


        {{/switchPrijs}}
        </span>
        </article>
     
       
        
        </div>
         {{/if}}

      

        
        {{#if locationsActivity}}
       <div class="filter-info-types">
        {{#each locationsActivity}}
        <article class="praktisch">
         <i class="fa fa-map-marker" aria-hidden="true"></i>
         <span>

        {{this.naam_nl}}
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
        {{/if}}
        
       
         
        

        </section>
        </div>
        </div>
</script>