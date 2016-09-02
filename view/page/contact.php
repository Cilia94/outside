<!-- <div class="intro-image shadow ">
    <div class="header-image-outside inner-shadow masked ">
        
    </div>

    <img class="header-image-logo" src="css/assets/images/logo-outside-white.png">
</div>
<div class="text-on-header"><p class="text-shadow">Adventure and fun</p></div>
 -->
<div class="container-middle container-aanbod no-header">
    <h1 class="titel-header">
        <?php 
        switch($_SESSION['session_taal']){
            case "NL":
            ?>

            Contact
            <?php break; 

            case "FR":
            ?>

            Contact
            <?php break; 

            case "ENG":
            ?>

            Contact
            <?php break;
            } ?>


        </h1>
  
    <img class="titel-img" src="css/assets/images/titel-underline.png">
 

    <div class="contact-sections">
      
    <ul class="contact-info">

        <div class="contact-item adres-section">

        <li class="top-border same-type-info-following sub-contact-header">
            <i class="fa fa-home" aria-hidden="true"></i> 
            <span class="name-info">Adres</span><br>
            
        </li>
    

        <li class="same-type-info-following sub-contact-info">
            <i class="fa fa-home not-visible" aria-hidden="true"></i> 
            <span class="name-info">Adventure Park:</span><br>
            <span class="value-info">Westouterseweg 3, 8970 Poperinge</span>
            
        </li>

        <li class="same-type-info-following sub-contact-info">
            <i class="fa fa-home not-visible" aria-hidden="true"></i> 
            <span class="name-info">Park Rodeberg:</span><br>
            <span class="value-info">Lijstermolendreef 1, 8954 Westouter</span>
            
        </li>

        <li class="sub-contact-info">
            <i class="fa fa-home not-visible" aria-hidden="true"></i>
             <span class="name-info">Outdoor Paintball: </span><br>
            <span class="value-info">Ouderdomseweg 9c, 8970 Poperinge</span>
            
        </li>
        </div>

        <section class="contact-right">
    
        <div class="contact-item">
            
        <li class="top-border">
            <i class="fa fa-phone" aria-hidden="true"></i>
             <span class="name-info">Tel.:</span>
            <span class="value-info">0032(0)57/33 87 01</span>
        </li>
        </div>

        <div class="contact-item">
             
        <li class="top-border">
            <i class="fa fa-fax" aria-hidden="true"></i>
             <span class="name-info">Fax:</span>
            <span class="value-info">0032(0)57/33 81 361</span>
        </li>
    </div>

        <div class="contact-item">

        <li class="top-border">
            <i class="fa fa-envelope" aria-hidden="true"></i>
             <span class="name-info">Email:</span>
            <span class="value-info">info@outsidetravel.be</span>
        </li>
    </div>

    <div class="contact-item">

        <li class="top-border">
            <i class="fa fa-globe" aria-hidden="true"></i>
             <span class="name-info">Outside travel:</span>
            <span class="value-info"><a href="http://www.outsidetravel.be">www.outsidetravel.be</a></span>
        </li>
    </div>
    </section>

            
    </ul>

    <ul class="openingsuren">
        <div class="header-openingsuren">
            <i class="fa fa-clock-o" aria-hidden="true"></i>
            
            <span>Openingsuren kantoor</span></div>
        <li class="dag">
            <span class="naam-dag">Maandag</span>
            <div class="beide-uren">
            <div class="uren voormiddag">09:00 - 12:00</div>
            <div class="uren namiddag">13:30 - 18:00</div>
        </div>
        </li>

        <li class="dag top-border">
            <span class="naam-dag">Dinsdag</span>
            <div class="beide-uren">
            <div class="uren voormiddag">09:00 - 12:00</div>
            <div class="uren namiddag">13:30 - 18:00</div>
        </div>
        </li>

        <li class="dag top-border">
            <span class="naam-dag">Woensdag</span>
            <div class="beide-uren">
            <div class="uren voormiddag">09:00 - 12:00</div>
            <div class="uren namiddag">13:30 - 18:00</div>
        </div>
        </li>

        <li class="dag top-border">
            <span class="naam-dag">Donderdag</span>
            <div class="beide-uren">
            <div class="uren voormiddag">09:00 - 12:00</div>
            <div class="uren namiddag">13:30 - 18:00</div>
        </div>
        </li>

        <li class="dag top-border">
            <span class="naam-dag">Vrijdag</span>
            <div class="beide-uren">
            <div class="uren voormiddag">09:00 - 12:00</div>
            <div class="uren namiddag">13:30 - 18:00</div>
        </div>
        </li>

        <li class="dag top-border">
            <span class="naam-dag">Zaterdag</span>
            <div class="beide-uren">
            <div class="uren voormiddag">09:00 - 12:00</div>
            <div class="uren namiddag">gesloten</div>
        </div>
        </li>

        <li class="dag top-border">
            <span class="naam-dag">Zondag</span>
            <div class="beide-uren">
            <div class="uren hele-dag">gesloten</div>
        </div>
        </li>
<li class="top-border li-opmerking">
        <p class="opmerking">
    <strong>Opmerking:</strong> ons Adventure Park is 7/7 open.
    Alle activiteiten moeten echter op voorhand gereserveerd worden via 
    <a href="mailto:info@outsidetravel.be">info@outsidetravel.be</a> of 
    <a href="tel:0479508660">0479/50.86.60</a></p>
</li>
    </ul>

        </div>




<form id="contact-form"  method="post" class="darker-bg-2">

    <h1>
        <?php 
        echo taal("Stuur een bericht", "Contacter nous", "Send a message"); ?>
    </h1>
    <img class="titel-img" src="css/assets/images/titel-underline.png">

    <div class="section-wrapper">

    <section>
    <div class="form-item">
    <label class="contact-label label-naam" for="input-naam">
        <?php echo taal("Naam", "Nom", "Name"); ?>*
    </label>
    <input id="input-naam" type="text">
    
</div>
<div class="form-item">
    <label class="contact-label label-email" for="input-email">
        <?php echo taal("Email", "Email", "Email"); ?>*</label>
    <input id="input-email" type="email">
    
</div>

<div class="form-item">
    <label class="contact-label label-gsm" for="input-gsm">
        <?php echo taal("GSM", "GSM", "GSM"); ?>*</label>
    <input id="input-gsm" class="" type="tel">
    
    </div>

    <div class="form-item">
    <label class="contact-label label-onderwerp" for="input-onderwerp">
        <?php echo taal("Onderwerp", "onderwerp", "Subject"); ?>
    </label>
    <input id="input-onderwerp" type="text">
    
    </div>
</section>
<section class="message-section">
    <div class="form-item message-item">
        <label class="contact-label label-bericht" for="input-bericht">
        <?php echo taal("Bericht", "Message", "Message"); ?>*</label>
    <textarea form="contact-form" id="input-bericht"></textarea>
</div>

<div class="form-item">
    <span style="display:none" class="show-error">
        <?php echo taal("Gelieve alle velden in te vullen","","Please fill in all required fields");
        ?>
    </span>
    <span style="display:none" class="show-succes">
        <?php echo taal("Je bericht is verstuurd!","","Your message has been sent!");
        ?>
    </span>
    
    <input class="submit-form" type="submit" value="<?php echo taal('Versturen','Envoyer','Send'); ?>">
</div>
</section>
</div>
</form>    

</div>




<div class="clear">&nbsp;</div>

