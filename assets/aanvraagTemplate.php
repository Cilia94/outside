

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>Aanvraag activiteit</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>

<body>
  
  <table align="center" cellpadding="0" cellspacing="0" 
  width="100%" style="border-collapse: collapse;" >
  <tr>
   


  </tr>
<tr>
  <td align="center"
  style="padding-top: 10px; padding-right: 10px; 
  padding-bottom: 8px; padding-left: 5px;"
  >
  
    <h1 style="padding-top: 15px;  
    padding-bottom: 15px;  
    background-color:#fe834d;">Aanvraag van %name%:
       </h1></td>
      </tr>
      <table align="">
       <tr>
               <td width="100%">
           <h3>Activiteiten:</h3> <span>%activities%</span>
         </td> </tr>
       </table>
      
      <table align="">
       <tr>
               <td width="40%">
           <h3>Type groep:</h3> <span>%typeGroep%</span>
         </td>
          <td width="40%">
           <h3>Deelnemers:</h3> <span>%deelnemers%</span>
         </td>
     
         <td width="40%">
           <h3>Leeftijd:</h3> <span>%leeftijd%</span>
         </td> </tr>
       </table>

        <table align="">
       <tr>
               <td width="100%">
           <h3>Datum(s):</h3> <span>%dates%</span>
         </td> </tr>
       </table>

       <table align="">
       <tr>
        <td width="45%">
           <h3>Aankomst tijd:</h3> <span>%aankomst%</span>
         </td>
        <td width="45%">
           <h3>Vertrek tijd:</h3> <span>%vertrek%</span>
        </td>
      </tr>
       </table>

       <table align="">
       <tr>
         <td width="100%">
           <h3>Vakantiehuis: </h3><span>%vakantiehuis%</span>
         </td> </tr>
       </table>

       <table align="">
       <tr>
        <td width="45%">
           <h3>Email: </h3><span>%email%</span>
         </td>
        <td width="45%">
           <h3>Contact taal: </h3><span>%taal%</span>
        </td>
      </tr>
       </table>

       <table align="">
       <tr>
         <td width="100%">
           <h3>Opmerkingen:</h3>
           <p>
          %message%
        </p>
         </td> </tr>
       </table>
       
</tr>
<!--   <row>
    <h3>Activities: <span>%activities%</span></h3>
    <h3>Activities: <span>%activities%</span></h3>
  </row>
    <row >
    <columns span="12">
 
       
      <h3>Email: <span>%email%</span></h3>
      <h3>Taal: <span>%taal%</span></h3>


 
      <callout class="primary">
        <p>Opmerkingen: <br>
          %message%
        </p>
      </callout>

         
     
     

    </columns>
  </row> -->
 </table>

</body>


</html>

<style type="text/css">

  @font-face {
    font-family: 'ralewayregular';
    src: url('./fonts/raleway/raleway-regular-webfont.woff2') format('woff2'),
         url('./fonts/raleway/raleway-regular-webfont.woff') format('woff');
    font-weight: normal;
    font-style: normal;

}

@font-face {
    font-family: 'ralewaymedium';
    src: url('./fonts/raleway/raleway-medium-webfont.woff2') format('woff2'),
         url('./fonts/raleway/raleway-medium-webfont.woff') format('woff');
    font-weight: normal;
    font-style: normal;

}


@font-face {
    font-family: 'ralewaybold';
    src: url('./fonts/raleway/raleway-bold-webfont.woff2') format('woff2'),
         url('./fonts/raleway/raleway-bold-webfont.woff') format('woff');
    font-weight: normal;
    font-style: normal;

}

  p, span{
    font-family: 'ralewayregular','Arial', sans-serif;
  }

  h1{
    font-family: 'ralewaybold','Arial', sans-serif;
  }

  h2, h3{
    font-family: 'ralewaymedium','Arial', sans-serif;
  }



  .header {
    background: #8a8a8a;
  }

  .header .columns {
    padding-bottom: 0;
  }

  .header p {
    color: #fff;
    padding-top: 15px;
  }

  .header .wrapper-inner {
    padding: 20px;
  }

  .header .container {
    background: transparent;

  }

  table.button.facebook table td {
    background: #3B5998 !important;
    border-color: #3B5998;
  }

  table.button.twitter table td {
    background: #1daced !important;
    border-color: #1daced;
  }

  table.button.google table td {
    background: #DB4A39 !important;
    border-color: #DB4A39;
  }

  .wrapper.secondary {
    background: #f3f3f3;
  }

  table{
   

  }
</style>


<!-- 
<container>

  <spacer size="16"></spacer>
  <table width="100%" border="0" cellspacing="0" cellpadding="20">

  <row>
    <columns span="12">
      <h1>Aanvraag van %name%:
       </h1>
       <h3>Activities: <span>%activities%</span></h3>
       <h3>Aantal deelnemers: <span>%deelnemers%</span></h3>
       <h3>Datums: <span>%dates%</span></h3>
       <h3>Aankomst tijd: <span>%aankomst%</span></h3>
       <h3>Vertrek tijd: <span>%vertrek%</span></h3>
      <h3>Email: <span>%email%</span></h3>
      <h3>Taal: <span>%taal%</span></h3>
      <h3>Type groep: <span>%typeGroep%</span></h3>


 
      <callout class="primary">
        <p>Opmerkingen: <br>
          %message%
        </p>
      </callout>

         
     
     

    </columns>
  </row>
  
</table>
      

</container> -->
