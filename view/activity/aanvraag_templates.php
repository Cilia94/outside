
<script id="handlebars-template-activity-aanvraag" type="text/template">
  <article id="activity-{{id}}" class="">
		<label>
            <input type="checkbox"  data-id="{{id}}" name="{{naam}}" class="checkbox-activity">
				{{naam}}
        </label>

           <a href="index.php?page=activiteit&id={{id}}&name={{naam}}" class="activity-info-link">
                <i class=" fa fa-info-circle" 
                aria-hidden="true"></i>
            </a>
                 </article>
</script>

<script id="handlebars-template-overview" type="text/template">
<section class="aanvraag-activity-type overview-type">
            <div class="activity-type-header">
            <h1 class="activity-type-h1">
           
         {{naam}}
		 
            </h1>
            <a href="index.php?page=activiteit&id={{id}}" class="link-type" data-type="outside-activiteiten">
          <span class="arrow-down glyphicon glyphicon-chevron-down"></span>
        </a>
    </div>
       <div id="items-type-{{id}}" class="items-in-type">
       </div>
       </script>



       <script id="handlebars-template-vakantiehuis" type="text/template">
  <a class="click" data-name="{{naam}}" href="#">
  <li>

            <span>
              
         {{naam}}

        </span>
                    
           </li></a>

           
            
</script>