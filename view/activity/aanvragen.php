

<div class="container-middle container-aanvraag no-header">
    <h1 id="page-name" class="titel-header">Aanvraagformulier</h1>
    <img class="titel-img" src="css/assets/images/titel-underline.png">
<!-- <p class="center-text"> Duid de activiteit(en) aan waar u interesse in heeft</p>
  -->     
      <!-- __________ STAP 1 ____________ --> 

    <div id="stap1" class="aanvraag-activiteiten">

      <div class="filter-aanvraag">
        <span><i class="fa fa-search" aria-hidden="true"></i></span>
      <span>Filter</span>
      <input type="text" id="filter-term">
    </div>

      <div class="aanvraag-activiteiten-flex">
    <div class="container-in-flex activiteiten-zelf">

     <section class="aanvraag-activity-type single-type">
       <p>Andere</p>
       <div class="items-in-type">
       </div>
        </section>
        </div>

        <div class="container-in-flex container-winkelwagen">
            <div class="container-winkelwagen-content">
            <h1>Interesse in</h1>
            <span class="geen-activiteiten">U hebt nog geen activiteiten aangeduid</span>
                
            <ul class="interesse-in">
                
            </ul>
            <button disabled = "true" class="next-step not-active" id="to-step-2">Volgende stap</button>
        </div>
    </div>

      </div> 
    </div>

     <div id="stap2" style="display:none" class="aanvraag-activiteiten">
    <div class="aanvraag-activiteiten-flex">
    <div class="container-in-flex activiteiten-zelf">

     
        </div>

        <div class="container-in-flex container-winkelwagen">
            <div class="container-winkelwagen-content">
            <h1>STAP2</h1>
            <span class="geen-activiteiten">STAP 2</span>
                
            <ul class="interesse-in">
                
            </ul>
            <button disabled = "true" class="next-step not-active" id="to-step-2">Volgende stap</button>
        </div>
    </div>

      </div> 
    </div>
</div>



<div class="clear">&nbsp;</div>



<script id="handlebars-template-activity-aanvraag" type="text/template">
  <article id="activity-{{id}}" class="">
                <input type="checkbox" data-id="{{id}}" name="<?php 
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

        ?>" class="checkbox-activity">
                <h2><?php 
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
                    
           </h2><a href="index.php?page=globalItem&id={{id}}" class="activity-info-link">
                <i class=" fa fa-info-circle" 
                aria-hidden="true"></i>
            </a>
                 </article>
</script>

<script id="handlebars-template-overview" type="text/template">
<section class="aanvraag-activity-type overview-type">
            <div class="activity-type-header">
            <h1 class="activity-type-h1">
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
            </h1>
            <a href="index.php?page=globalItem&id={{id}}" class="link-type" data-type="outside-activiteiten">
          <span class="arrow-down glyphicon glyphicon-chevron-down"></span>
        </a>
    </div>
       <div id="items-type-{{id}}" class="items-in-type">
       </div>
       </script>




