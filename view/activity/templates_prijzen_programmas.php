<script id="handlebars-template-programmas" type="text/template">
<ul class="planning-from-template">
{{#each subProgrammas}}
<article>
<div class="header-planning">

<?php switch($_SESSION[ 'session_taal']){

     case "NL": ?>
     {{header_nl}}
     <?php
      break; 


      case "FR": ?>
      {{header_fr}}
      <?php
      break; 

      case "ENG": 
      ?>
      {{header_en}}
      <?php 
      break; 
} ?></div>

       {{#each activiteiten}}
        <li class="top-border">
               <span class="tijdstip">

                {{tijdstip}}
            </span>
    <span class="titel-planned-activity">


    <?php switch($_SESSION[ 'session_taal']){

     case "NL": ?>
     {{titel_nl}}
     <?php
      break; 


      case "FR": ?>
      {{titel_fr}}
      <?php
      break; 

      case "ENG": 
      ?>
      {{titel_en}}
      <?php 
      break; 
} ?>
                
            </span>
            {{#if info}}
            <p class="info-planned-activity">
               <?php switch($_SESSION[ 'session_taal']){

     case "NL": ?>
     {{info_nl}}
     <?php
      break; 


      case "FR": ?>
      {{info_fr}}
      <?php
      break; 

      case "ENG": 
      ?>
      {{info_en}}
      <?php 
      break; 
} ?>
               
           </p>
           {{/if}}
         
        </li>

        {{/each}}
        </article>
        {{/each}}
</ul>

</script>


<script id="handlebars-template-prijzen" type="text/template">
<div class="container-all-prices">
{{#each allePrijzen}}
<article>
<div class="header-prijzen">
<?php switch($_SESSION[ 'session_taal']){

     case "NL": ?>
     {{titel_nl}}
     <?php
      break; 


      case "FR": ?>
      {{titel_fr}}
      <?php
      break; 

      case "ENG": 
      ?>
      {{titel_en}}
      <?php 
      break; 
} ?></div>


      
        <li class="top-border">
            <div class="prijs-container">
            <span class="prijs">

                {{prijs}}€
            </span></div>
            <div class="info-container">
            <span class="titel-prijs">


    <?php switch($_SESSION[ 'session_taal']){

     case "NL": ?>
     {{prijs_nl}}
     <?php
      break; 


      case "FR": ?>
      {{prijs_nl}}
      <?php
      break; 

      case "ENG": 
      ?>
      {{prijs_nl}}
      <?php 
      break; 
} ?>
                
            </span>
         
            <p class="info-prijs">
               <?php switch($_SESSION[ 'session_taal']){

     case "NL": ?>
     {{extra_nl}}
     <?php
      break; 


      case "FR": ?>
      {{extra_nl}}
      <?php
      break; 

      case "ENG": 
      ?>
      {{extra_nl}}
      <?php 
      break; 
} ?>
               {{#if catering}}
               <br><a href="#"> Prijslijst catering</a>
               {{/if}}
           </p>
          
           </div>
        </li>


       
        </article>
        {{/each}}

        </div>

</script>
