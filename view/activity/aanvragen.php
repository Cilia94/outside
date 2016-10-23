<div class="container-middle container-aanvraag no-header">
 <h1 id="page-name" class="titel-header">  <span>
 <?php echo taal('Aanvraagformulier','',''); ?>   </span>
<div class="titel-img-container">
    <img class="titel-img" src="css/assets/images/titel-underline.png">
     </div>
</h1>

  


   

   <!-- __________ STAP 1 ____________ --> 
   <div class="aanvraag-activiteiten">
      <ul class="stap-header">
         <li  data-stap-id="1" class="active">
            <span><?php echo taal('Stap','Stap','Step'); ?>1</span>
         </li>
         <li data-stap-id="2" >
            <span><?php echo taal('Stap','Stap','Step'); ?>2</span>
         </li>
         <li data-stap-id="3" >
            <span><?php echo taal('Stap','Stap','Step'); ?>3</span>
         </li>
          <li data-stap-id="4" >
            <span><?php echo taal('Stap','Stap','Step'); ?>4</span>
         </li>

          
      </ul>
      <div id="stap1" style="display:block" class="aanvraag-activiteiten aanvraag-container">
         
         
               <div class="container-stap-content aanvraag-activiteiten-flex">
                <div class="container-stap-1">


                  <h1><?php echo taal('Selecteer uw type groep:','',''); ?></h1>
                  <ul class="type-groepen">
                    <a href=""><li data-type-id="1">
                      
                      <span><?php echo taal('School','',''); ?> </span>
                    </li></a>

                    <a href=""><li data-type-id="2">
                      
                      <span><?php echo taal('Jeugdgroepen -18J','',''); ?> </span>
                     
                    </li> </a>

                    <a href=""><li data-type-id="3">
                      
                      <span><?php echo taal('Bedrijven','',''); ?> </span>
                      
                    </li></a>
                    <a href="">
                    <li data-type-id="4">
                      
                      <span><?php echo taal('Vriendengroep','',''); ?> </span>
                     
                    </li> </a>
                  </ul>

                  
                  <div class="buttons">
                  <button disabled="true" class="next-step not-active" id="to-step-2">
                    <?php echo taal('Volgende stap','',''); ?>
                    <span class=" glyphicon glyphicon-chevron-right"></span></button>
               </div>
            
            </div>  
            </div>
          </div>   
    

      <div id="stap2" style="display:none" class="aanvraag-container">
       

         <div class="filter-aanvraag">
            <span><i class="fa fa-search" aria-hidden="true"></i></span>
            <span><?php echo taal('Filter','',''); ?> </span>
            <input type="text" id="filter-term">
         </div>


         <div class="aanvraag-activiteiten-flex">
            <div class="container-in-flex container-stap-content activiteiten-zelf">
               <section class="aanvraag-activity-type overview-type">
                  <div class="activity-type-header">
                     <h1 class="activity-type-h1">
                        <?php 
                           echo taal('Paketten','','Outdoor activities');
                           
                           ?>
                     </h1>
                     <a href="index.php?page=category&id=1" class="link-type" data-type="outside-activiteiten">
                     </a>
                  </div>
                  <div id="items-type-pakket" class="items-in-type">
                  </div>
               </section>

               <section class="aanvraag-activity-type overview-type">
                  <div class="activity-type-header">
                     <h1 class="activity-type-h1">
                        <?php 
                           echo taal('Outdoor activiteiten','','Outdoor activities');
                           
                           ?>
                     </h1>
                     <a href="index.php?page=category&id=1" class="link-type" data-type="outside-activiteiten">
                     </a>
                  </div>
                  <div id="items-type-1" class="items-in-type">
                  </div>
               </section>
               
               <section class="aanvraag-activity-type overview-type">
                  <div class="activity-type-header">
                     <h1 class="activity-type-h1">
                        <?php 
                           echo taal('Feesten','','Events');
                           
                           ?>
                     </h1>
                     <a href="index.php?page=category&id=2" class="link-type" data-type="outside-activiteiten">
                     </a>
                  </div>
                  <div id="items-type-2" class="items-in-type">
                  </div>
               </section>
               <section class="aanvraag-activity-type overview-type">
                  <div class="activity-type-header">
                     <h1 class="activity-type-h1">
                        <?php 
                           echo taal('Sportdag','','');
                           
                           ?>
                     </h1>
                     <a href="index.php?page=category&id=3" class="link-type" data-type="outside-activiteiten">
                     </a>
                  </div>
                  <div id="items-type-3" class="items-in-type">
                  </div>
               </section>
               <section class="aanvraag-activity-type overview-type">
                  <div class="activity-type-header">
                     <h1 class="activity-type-h1">
                        <?php 
                           echo taal('Vakantiehuis','','');
                           
                           ?>
                     </h1>
                     <a href="index.php?page=category&id=4" class="link-type" data-type="outside-activiteiten">
                     </a>
                  </div>
                  <div id="items-type-4" class="items-in-type">
                  </div>
               </section>
               <!-- <section class="aanvraag-activity-type single-type">
                  <p>Andere</p>
                  <div class="items-in-type">
                  </div>
                   </section> -->
            </div>
            <div class="container-in-flex container-stap-content container-winkelwagen">
               <div class="container-winkelwagen-content">
                  <h1><?php echo taal('Interesse in','',''); ?> </h1>
                  <span class="geen-activiteiten">
                    <?php echo taal('U hebt nog geen activiteiten aangeduid','',''); ?>
                  </span>
                  <ul class="interesse-in">
                  </ul>
                  <div class="buttons">
                  <button class="next-step ga-terug" data-stap="1"><span class="glyphicon glyphicon-chevron-left"></span> 
                  <?php echo taal('Vorige stap','',''); ?>
                </button>
                  <button disabled="true" class="next-step not-active" id="to-step-3">
                    <?php echo taal('Volgende stap','',''); ?>
                    <span class=" glyphicon glyphicon-chevron-right"></span></button>
               </div>
             </div>
            </div>
         </div>
      </div>


     
    <div id="stap3" style="display:none" class="aanvraag-activiteiten aanvraag-container">
         <div class="aanvraag-activiteiten-flex">
            <div class="container-in-flex container-stap-content container-winkelwagen">
               <div class="container-in-flex">
               <div class="container-winkelwagen-content">
                  <ul class="interesse-in">
                  </ul>
                  
                  
               </div>
            </div>
            </div>
           

            <div class="container-in-flex container-vakantiehuis">
               <div class="container-winkelwagen-content vakantiehuis-content">
                <p>
                  <?php echo taal('Wilt u een vakantiehuis huren?','',''); ?>
                </p>
                  <ul class="ja-nee">
                    <a href=""><li data-antwoord="nee">
                      
                      <span>
                        <?php echo taal('Nee','',''); ?></span>
                    </li></a>

                    <a href=""><li data-antwoord="ja">
                      
                      <span>
                        <?php echo taal('Ja','',''); ?> </span>
                     
                    </li> </a>
                  </ul>
                  <div class="vakantiehuizen">
                    <p>
                      <?php echo taal('Maak een keuze uit onze vakantiehuizen','',''); ?>
                       <br>
                      <a href="http://localhost/outside/index.php?page=category&id=4">
                        <?php echo taal('Meer info?','',''); ?>
                      </a>
                    </p>

                <ul id="vakantiehuizen-ul">
                  


                  
                </ul>
              </div>
                
                  <div class="buttons">
                  <button class="next-step ga-terug" data-stap="2"><span class="glyphicon glyphicon-chevron-left"></span> 
                  <?php echo taal('Vorige stap','',''); ?>
                </button>
                  <button class="next-step not-active" id="to-step-5">
                    <?php echo taal('Volgende stap','','Next step'); ?>
                  </button></div>
               </div>
            </div>
         </div>
      </div>



      <div id="stap4" style="display:none" class="aanvraag-activiteiten aanvraag-container">
         <div class="aanvraag-activiteiten-flex">
            <div class="container-in-flex container-stap-content container-winkelwagen">
               <div class="container-in-flex">
               <div class="container-winkelwagen-content">
                  <ul class="interesse-in">
                  </ul>
                  
                  
               </div>
            </div>
            </div>
           

            <div class="container-in-flex container-form">
               <div class="container-winkelwagen-content">
                <form id="form-standaard" class="gegevens-form">


                <article class="gegevens-article">
                  <label for="gegevens-naam">
                    <?php echo taal('Naam','Nom','Name'); ?>
                  </label>
                  <input id="gegevens-naam" class="gegevens-input" type="text">
                </article>

                <article class="gegevens-article">
                  <label for="gegevens-tel">
                    <?php echo taal('Telefoon nummer','','Telephone number'); ?>
                  </label>
                  <input id="gegevens-tel" class="gegevens-input" type="tel">
                </article>

                <article class="gegevens-article">
                  <label for="gegevens-mail">
                    <?php echo taal('Email','Email','Email'); ?>
                  </label>
                  <input id="gegevens-mail" class="gegevens-input" type="email">
                </article>

                <article class="gegevens-article">
                  <label for="gegevens-deelnemers">
                    <?php echo taal('Aantal deelnemers','',''); ?>
                  </label>
                  <input id="gegevens-deelnemers" class="gegevens-input" type="number" min="1">
                </article>
                <article class="gegevens-article">

                <label id="meerdereDagen">
              <input type="checkbox" class="checkMultipleDays" />
              <?php echo taal('Gaan de activiteiten door op meerdere dagen?','',''); ?>
            </label>
            <div class="both-datepickers">
            <div class="date_van datepick-container">
            <p><?php echo taal('Duid aan op welke dag de activiteit(en)', '',''); ?>
             <span class="b_dag"><?php echo taal('start','',''); ?> </span>.</p>
            
            <!-- <div class="datepicker" id="datePicker_van"></div> -->
            <input type="text" id="datePicker_van">
          </div>

          <div style="display:none" class="date_tot datepick-container">
            <p><?php echo taal('Duid aan op welke dag de activiteit(en)','',''); ?>
             <span class="b_dag"><?php echo taal('eindigt','',''); ?> </span>.</p>
            
            <!-- <div class="datepicker" id="datePicker_tot"></div> -->
            <input type="text" id="datePicker_tot">
          </div>
        </div>
      </article>

                <article class="gegevens-article">
                  <label for="gegevens-aankomst">
                    <?php echo taal('Aankomst tijd','',''); ?>
                  </label>
                  <input id="gegevens-aankomst" class="gegevens-input" type="time">
                </article>

                <article class="gegevens-article">
                  <label for="gegevens-opmerkingen">
                    <?php echo taal('Eventuele opmerkingen','',''); ?>
                  </label>
                  <textarea id="gegevens-opmerkingen" rows="6" class="gegevens-input">
                  </textarea>
                </article>


                </form>

                <form id="form-school" style="display:none" class="gegevens-form">
              

                <article class="gegevens-article">
                  <label for="gegevens-naam">
                    <?php echo taal('Naam school','Nom','Name'); ?>
                  </label>
                  <input id="gegevens-naam" class="gegevens-input" type="text">
                </article>

                <article class="gegevens-article">
                  <label for="gegevens-tel">
                    <?php echo taal('Telefoon nummer','','Telephone number'); ?>
                  </label>
                  <input id="gegevens-tel" class="gegevens-input" type="tel">
                </article>

                <article class="gegevens-article">
                  <label for="gegevens-mail">
                    <?php echo taal('Email','Email','Email'); ?>
                  </label>
                  <input id="gegevens-mail" class="gegevens-input" type="email">
                </article>

                <article class="gegevens-article">
                  <label for="gegevens-deelnemers">
                    <?php echo taal('Aantal leerlingen','',''); ?>
                  </label>
                  <input id="gegevens-deelnemers" class="gegevens-input" type="number" min="1">
                </article>

                <article class="gegevens-article">
                  <label for="gegevens-leeftijd">
                    <?php echo taal('Leeftijd leerlingen','',''); ?>
                  </label>
                  <input id="gegevens-leeftijd" class="gegevens-input" type="number">
                </article>
                <article class="gegevens-article">

                <label id="meerdereDagen">
              <input type="checkbox" class="checkMultipleDays" />
              <?php echo taal('Gaan de activiteiten door op meerdere dagen?','',''); ?>
            </label>
            <div class="both-datepickers">
            <div class="date_van datepick-container">
            <p><?php echo taal('Duid aan op welke dag de activiteit(en)', '',''); ?>
             <span class="b_dag"><?php echo taal('start','',''); ?> </span>.</p>
            
            <!-- <div class="datepicker" id="datePicker_van"></div> -->
            <input type="text" id="datePicker_van_school">
          </div>

          <div style="display:none" class="date_tot datepick-container">
            <p><?php echo taal('Duid aan op welke dag de activiteit(en)','',''); ?>
             <span class="b_dag"><?php echo taal('eindigt','',''); ?> </span>.</p>
            
            <!-- <div class="datepicker" id="datePicker_tot"></div> -->
            <input type="text" id="datePicker_tot_school">
          </div>
        </div>
      </article>

                <article class="gegevens-article">
                  <label for="gegevens-aankomst">
                    <?php echo taal('Aankomst tijd','',''); ?>
                  </label>
                  <input id="gegevens-aankomst" class="gegevens-input" type="time">
                </article>

                <article class="gegevens-article">
                  <label for="gegevens-vertrek">
                    <?php echo taal('Vertrek tijd','',''); ?>
                  </label>
                  <input id="gegevens-vertrek" class="gegevens-input" type="time">
                </article>

                <article class="gegevens-article">
                  <label for="gegevens-opmerkingen">
                    <?php echo taal('Eventuele opmerkingen','',''); ?>
                  </label>
                  <textarea id="gegevens-opmerkingen" rows="6" class="gegevens-input">
                  </textarea>
                </article>


                </form>

                <p class="error-text">
                  <?php echo taal('Gelieve alle velden in te vullen','','Please fill in all the fields'); ?>
                </p>
                  <div class="buttons">
                  <button class="next-step ga-terug" data-stap="3"><span class="glyphicon glyphicon-chevron-left"></span> 
                  <?php echo taal('Vorige stap','',''); ?>
                </button>
                  <button class="next-step not-active" id="send-form">
                    <?php echo taal('Versturen','','Send'); ?>
                  </button></div>
               </div>
            </div>
         </div>
      </div>

      <div id="succes-form" style="display:none" class="aanvraag-activiteiten aanvraag-container">
         
         
               <div class="container-stap-content aanvraag-activiteiten-flex">
                <div style="height:445px" class="container-stap-1">
                  <h1><?php echo taal('Bedankt voor u aanvraag','',''); ?></php> </h1>
                  <p><?php echo taal('U zult zo snel mogelijk een antwoord ontvangen.','',''); ?> </p>
                  

                  
                 
            
            </div>  
            </div>
          </div> 



 </div>
</div>
<div class="clear">&nbsp;</div>

<?php include('aanvraag_templates.php'); ?>