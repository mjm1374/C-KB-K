<?php

if (in_array('mod_rewrite', apache_get_modules())) {
    echo "Yes, Apache supports mod_rewrite.";
}

else {
    echo "Apache is not loading mod_rewrite.";
}

$recipe =  $_GET['rcp'];
echo  $_SERVER['SERVER_NAME'];

    include_once  'db.php';
    include_once 'globals.php';
    include_once 'classes.php';
    include "vendor/autoload.php";
    include "templates.inc";
    
    use ckbk\Recipe as Recipe;
?>


<!DOCTYPE html>
<html>
<head>
    <?php
     include_once 'common.inc';
     ?>
</head>
<body>
    
    <header>
        
        <?php include_once  "header.php"; ?>
        <nav id="topNav">
            <?php include_once  "nav.php"; ?>
        </nav>
    </header>
    <div id="holder"></div>
      <!--loading throbber-->
      <div id="ckb-throbber" class="ckb-thobber">
          <svg id="circle" height="60" width="60" 
              xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" >
           <image x="0" y="0" height="60" width="60"  xlink:href="img/Disk-1s-200px.svg" />
         </svg>            
      </div>
    </div>
    <div id="container" class="ckb-main-container">
       
        
    
    </div>


 
<footer>
    <?php include_once  "footer.php"; ?>
</footer>
</body>

    <script>
    $( document ).ready(function() {
        log( "ready!" );
        chkCookies();
     
        getRecipe(<?php echo $recipe; ?>);          // function to fetch JSON and populate
        
         
        });
    </script> 
</html>