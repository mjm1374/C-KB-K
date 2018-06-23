<?php
    include_once 'db.php';
    include_once 'globals.php';
    include_once 'classes.php';
    include "vendor/autoload.php";
    
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
        <nav>
            <?php include_once  "nav.php"; ?>
        </nav>
    </header>
    
    <div id="container" class="cb-main-container">
       

        
        <!--<div class="ckb-recipeCard-sm">
        //<?php
        //    $thisRecipe = new Recipe;
        //    $thisRecipe->set_name("Chicken soup");
        //    
        //?>
        //     <h1><?php //$thisRecipe->display_name(); ?></h1>
        //     <?php
        //     
        //    
        //    $thisRecipe->set_recipe("summary", "Its good for you");
        //    
        //   echo "<p>" . $thisRecipe->get_recipe("summary") . "</p>";
        //?>
        </div>-->
    </div>


  <!-- Declare a JsRender template, in a script block: -->
  <script id="myRecipes" type="text/x-jsrender">
 
    <div class="ckb-recipeCard-sm">
        <h1>{{:name}}</h1>
        <p>
            {{:desc}}
        </p>
        <p>
            Serves: {{:serves}} </br>
            Prep Times: {{:pTime}} </br>
            Cook Time: {{:cTime}} </br>
        </p>
    </div>
  
  </script>

<footer>
    <?php include_once  "footer.php"; ?>
</footer>
</body>
    <script src="./js/script.min.js" type="text/javascript"></script>
    <script>
    $( document ).ready(function() {
        log( "ready!" );
        
         getRecipes() ;          // function to fetch JSON and populate
        
         
        });
    </script>
</html>