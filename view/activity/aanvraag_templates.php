
<script id="handlebars-template-activity-aanvraag" type="text/template">
  <article id="activity-{{id}}" class="">
		<label>
            <input type="checkbox"  data-id="{{id}}" name="{{naam}}" class="checkbox-activity">
				{{naam}}
        </label>

           <a href="/{{type}}/{{id}}/{{naam}}" class="activity-info-link">
                <i class=" fa fa-info-circle" 
                aria-hidden="true"></i>
            </a>
                 </article>
</script>





       <script id="handlebars-template-vakantiehuis" type="text/template">
  <a class="click" data-name="{{naam}}" href="#">
  <li>

            <span>
              
         {{naam}}

        </span>
                    
           </li></a>

           
            
</script>