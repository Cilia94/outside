
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