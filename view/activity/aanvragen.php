<div class="container-middle container-aanvraag no-header">
   <h1 id="page-name" class="titel-header">Aanvraagformulier</h1>
   <img class="titel-img" src="css/assets/images/titel-underline.png">
   <!-- <p class="center-text"> Duid de activiteit(en) aan waar u interesse in heeft</p>
      -->     
   <!-- __________ STAP 1 ____________ --> 
   <div class="aanvraag-activiteiten">
      <ul class="stap-header">
         <li  data-stap-id="1" class="active">
            <span>Stap 1</span>
         </li>
         <li data-stap-id="2" >
            <span>Stap 2</span>
         </li>
         <li data-stap-id="3" >
            <span>Stap 3</span>
         </li>
      </ul>
      <div id="stap1" style="display:block" class="aanvraag-activiteiten aanvraag-container">
         
         
               <div class="container-stap-content aanvraag-activiteiten-flex">
                <div class="container-stap-1">
                  <h1>Selecteer uw type groep:</h1>
                  <ul class="type-groepen">
                    <a href=""><li data-type-id="1">
                      
                      <span>School</span>
                    </li></a>

                    <a href=""><li data-type-id="2">
                      
                      <span>Jeugdgroep -18J</span>
                     
                    </li> </a>

                    <a href=""><li data-type-id="3">
                      
                      <span>Bedrijf</span>
                      
                    </li></a>
                    <a href="">
                    <li data-type-id="4">
                      
                      <span>Vriendengroep</span>
                     
                    </li> </a>
                  </ul>

                  
                  
                  <button disabled="true" class="next-step not-active" id="to-step-2">Volgende stap</button>
               
            
            </div>  
            </div>
          </div>   
    

      <div id="stap2" style="display:none" class="aanvraag-container">
         <div class="filter-aanvraag">
            <span><i class="fa fa-search" aria-hidden="true"></i></span>
            <span>Filter</span>
            <input type="text" id="filter-term">
         </div>
         <div class="aanvraag-activiteiten-flex">
            <div class="container-in-flex container-stap-content activiteiten-zelf">
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
                  <h1>Interesse in</h1>
                  <span class="geen-activiteiten">U hebt nog geen activiteiten aangeduid</span>
                  <ul class="interesse-in">
                  </ul>
                  <button disabled="true" class="next-step not-active" id="to-step-3">Volgende stap</button>
               </div>
            </div>
         </div>
      </div>


      <div id="stap3" style="display:none" class="aanvraag-activiteiten aanvraag-container">
         <div class="aanvraag-activiteiten-flex">
          <div class="container-in-flex container-winkelwagen">
               <div class="container-winkelwagen-content">
                  <h1>Interesse in</h1>
                  
                  <ul class="interesse-in">
                  </ul>
                <!--   <button disabled="true" class="next-step not-active" id="to-step-2">Volgende stap</button>
                -->
              </div>
            </div>

            <div class="container-in-flex activiteiten-zelf aanvraag-activiteiten-input">
            
            <div class="vragen-input">
              <span>Gelieve onderstaande vragen te beantwoorden</span>
              <div class="same-group">
                <input id="same-group-checkbox" type="checkbox" />
              <label for="same-group-checkbox">Deze activiteiten zijn voor dezelfde groep</label>
                <ul class="same-group-questions">
                  <li>
                  <span>Mijn groep</span><br>
                  <label for="input-same-amount">Bestaat uit </label>
                  <input id="input-same-amount" type="number" />  
                  </li>
                </ul>
                </div>
              <ul>
                <p>Mijn groep voor de activiteit <span class="name-activity">(Kruis)boogschieten</span></p>
                  
                <li>
                  <label for="input-1">bestaat uit </label>
                  <input id="input-1" type="number"  />
                </li>
                <li>
                  <label for="input-1">heeft leden van de leeftijd</label>
                  <input id="input-1" type="number" />
                </li>
              </ul>
            </div>
            </div>
            
         </div>
      </div>

      <div id="stap4" style="display:none" class="aanvraag-activiteiten aanvraag-container">
         <div class="aanvraag-activiteiten-flex">
            <div class="container-in-flex activiteiten-zelf">
            </div>
            <div class="container-in-flex container-winkelwagen">
               <div class="container-winkelwagen-content">
                  <h1>STAP333333333</h1>
                  <span class="geen-activiteiten">STAP 333333333</span>
                  <ul class="interesse-in">
                  </ul>
                  <button disabled="true" class="next-step not-active" id="to-step-2">Volgende stap</button>
               </div>
            </div>
         </div>
      </div>



 </div>
</div>
<div class="clear">&nbsp;</div>

<?php include('aanvraag_templates.php'); ?>