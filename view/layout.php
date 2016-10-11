<!doctype html>

<html class="no-js" lang="">

<head>
    <script>
        WebFontConfig = {
            custom: {
                families: ['traveling__typewriterregular', 'raleway'],
                urls: ['assets/fonts/webfontkit-20160803-123322/stylesheet.css', 'assets/fonts/raleway/stylesheet.css']
            }
        };

        (function() {
            var wf = document.createElement('script');
            wf.src = '//ajax.googleapis.com/ajax/libs/webfont/1.5.6/webfont.js';
            wf.src = 'js/vendor/webfontloader/webfontloader.js';
            wf.type = 'text/javascript';

            wf.async = 'true';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(wf, s);
        })();
    </script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Outside Adventure & Fun</title>
    <meta name="description" content="Outside Adventure is een " />
    <meta name="keywords" content="outside, adventure, activities, poperinge, westouter, outdoor" />
    <meta name="viewport" content="width=device-width, initial-scale=1 " />
    <meta name="author" content="Cilia Vandenameele" />
    <meta name="copyright" content="Outside Adventure" />
    <meta name="application-name" content="Outside Adventure" />
    <meta property="og:title" content="Outside Adventure" />
    <meta property="og:type" content="article" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:description" content="" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content="Outside Adventure" />
    <meta name="twitter:description" content="" />
    <meta name="twitter:image" content="" />
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favs.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- <link rel="stylesheet" href="css/bootstrap-theme.min.css"> -->

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    
    <link rel="stylesheet" href="js/vendor/magnific/magnific-popup.css">
  
    <link rel="stylesheet" href="css/main.css">
    
    <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <script src="js/vendor/modernizr-mask.js"></script>
</head>

<body>




    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <a class="link-logo" href="index.php">
        <div class="outside-logo">
            <img src="assets/images/logo-outside.png">
        </div>
        </a>
        <div class="navbar-header">
            <button type="button" class="navbar-toggle def collapsed" 
            data-toggle="collapse" data-target="#navbar" 
            aria-expanded="false" aria-controls="navbar">

                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                              </button>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
        <button type="button" class="navbar-toggle close-menu " 
        data-toggle="collapse" data-target="#navbar" 
        aria-expanded="true" aria-controls="navbar">
        <i class="fa fa-times" aria-hidden="true">
        </i></button>
        
            <ul class="nav navbar-nav">
                <li class="global-menu-item active-item">
                    <a class="link-item" href="index.php">Ons aanbod
                                    <span class="sr-only">(current)</span>
                                     <span class="arrow-menu arrow-down glyphicon glyphicon-chevron-down"></span>
                                  </a>
                                  <ul>
    
        
        <li><a href="index.php?page=category&id=1">
        <?php echo taal('Outdoor activiteiten','','Outdoor activities'); ?></a>
        
         </li>
        <li><a href="index.php?page=category&id=2">
        <?php echo taal('Events','','Parties'); ?>
        </a></li>
        <li><a href="index.php?page=activiteit&id=485">
        <?php echo taal('Vrijgezellenfeestjes','','Bachelor parties'); ?>
        </a></li>
        <li><a href="index.php?page=categoryType&id=4">
        <?php echo taal('Jeugdgroepen -18J','',''); ?>
        </a></li>
        <li><a href="index.php?page=category&id=3">
        <?php echo taal('Scholen sportdagen','',''); ?>
        </a></li>
        <li><a href="index.php?page=categoryType&id=3">
        <?php echo taal('Outdoor paketten','',''); ?>
        </a></li>
        <li><a href="index.php?page=category&id=4">
        <?php echo taal('Vakantiehuizen','',''); ?>
        </a></li>
        <li><a href="index.php?page=categoryType&id=2">
        <?php echo taal('Easy Leisure','',''); ?>
        </a></li>

            <li class="special-menu-item"><a href="index.php?page=filter">
        <?php echo taal('Vind je ideale activiteit!','',''); ?>
        </a></li>
      </ul>
                </li>
                <div class="divider-menu">&nbsp;</div>
                <li class="global-menu-item ">
                    <a class="link-item" href="index.php?page=adventurePark">
                    <?php echo taal('Ons park','Votre locations','Our locations'); ?>
                                    <span class="sr-only">(current)</span>
                                     </a>

                                   
                </li>
                <div class="divider-menu">&nbsp;</div>
                <li class="global-menu-item ">
                    <a class="link-item" href="index.php?page=aanvragen">Aanvragen
                                    <span class="sr-only">(current)</span>

                                  </a>
                </li>
                <div class="divider-menu">&nbsp;</div>
                <li class="global-menu-item">
                    <a class=" link-item" href="index.php?page=contact">Contact
                                    <span class="sr-only">(current)</span>

                                  </a>
                </li>



            </ul>

            <div class="search-nav">
            <div class="search-nav-content">
                                <input id="search-input-header" placeholder="Zoeken..." type="text">
                                <a href="#"><i class="search-icon fa fa-search" aria-hidden="true"></i></a>
                                </div>
                                </div>

        <div class="lang-select">
            <ul class="taal-kiezen">
        <li class="current-taal">
        <span data-taal="<?php echo $_SESSION['session_taal'];
        ?>" id="current-taal">
        <?php echo $_SESSION['session_taal'];
        ?>
        </span>
        <span class="arrow-down glyphicon glyphicon-chevron-down"></span>
        </li>
         <li data-taal="ENG" class="change-taal"><a href="#"> ENG </a></li>
         <li data-taal="FR" class="change-taal"><a href="#"> FR </a></li>
         <li data-taal="NL" class="change-taal"><a href="#"> NL </a></li>
     
        </ul>
       
        </div>




        </div>
      
       
                              
                               


    </nav>


    <div class="content">

        <?php

            echo $content; ?>



<footer>
    <p>&copy; Outside Adventure</p>
</footer>
    </div>





    <script type="text/javascript" src="js/vendor/fallback/fallback.min.js"></script>
    <script type="text/javascript" src="js/vendor/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.lazyload/1.9.1/jquery.lazyload.min.js"></script>
    <script type="text/javascript" src="js/vendor/magnific/magnific-popup.min.js">
    </</script>
  
    <script type="text/javascript" src="js/start.js"></script>
    
    <!-- 
    Google Analytics: change UA-XXXXX-X to be your site's ID. 
    <script>
        (function(b, o, i, l, e, r) {
            b.GoogleAnalyticsObject = l;
            b[l] || (b[l] =
                function() {
                    (b[l].q = b[l].q || []).push(arguments)
                });
            b[l].l = +new Date;
            e = o.createElement(i);
            r = o.getElementsByTagName(i)[0];
            e.src = '//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e, r)
        }(window, document, 'script', 'ga'));
        ga('create', 'UA-XXXXX-X', 'auto');
        ga('send', 'pageview');
    </script>
    -->
</body>

</html>