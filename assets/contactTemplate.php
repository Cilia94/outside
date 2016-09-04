

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

  p{
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
    background: #BA1335;

  }
</style>



<container>

  <spacer size="16"></spacer>
  <table width="100%" border="0" cellspacing="0" cellpadding="20">

  <row>
    <columns small="12">
      <h1>Contactbericht van %name%:
       </h1>
        <h2>Onderwerp: <small>%subject%</small></h2>
     

 
      <callout class="primary">
        <p>
          %message%
        </p>
      </callout>
      <h3>GSM nummer: <small>%gsm%</small></h3>
      <h3>Email: <small>%email%</small></h3>
         
     
     

    </columns>
  </row>
  
</table>
      

</container>
