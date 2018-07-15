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
     
    <div id="container" class="ckb-main-container">
        
<div class="ckb-recipeCard-lg" data-recipe="{{:id}}">
  

    <div class="ckb-rcp-content">
      
        <div class="cbk-rcp-top"></div>
      
        <div class="cbk-rcp-left">
            <div id="cbk-rcp-desc"></div>
            <ul class="cbk-ingrd-list">
                <div id="cbk-rcp-ingrds"></div>
            </ul>
            
            <div id="cbk-rcp-cmt"></div>
        
           
        </div>
      
        <div class="cbk-rcp-right">
            <div id="cbk-rcp-cook">
                <!-- temp placeholder -->
                 <div class="cbk-cook-profile">
                    <div class="cbk-cheif-clear">
                      <div class="cbk-cheif-photo-sm" style="background: url('img-assets/the_boys.jpg');"></div>
                      <h3>Mr. Cookington</h3>
                    </div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, ex molestiae iusto adipisci! Aspernatur perferendis labore dolorem, nesciunt ex, illo iure rem voluptatum omnis. Fuga mollitia deserunt earum error odio voluptatum nostrum officia numquam
                    quaerat dicta eaque veniam rem illum, quisquam, corporis quo culpa, commodi tempore aspernatur perferendis aliquam optio. Officiis inventore velit dignissimos debitis nulla illo quaerat ducimus recusandae quis architecto voluptas placeat vel sunt itaque,
                    laboriosam impedit expedita fuga facere sint non minima.</p>
                  </div>
            </div>
            <div id="cbk-rcp-ad">
                <!-- temp placeholder -->
                 <div class="ckb-recipe-ad-lg">
                    <div class="cbk-adholder">
                      <img src="img/ads/ad-space-300x250.png" alt="palceholder" >
                    </div>
                  </div>
            </div>
            <div id="cbk-rcp-diary">
                <!-- temp placeholder -->
                <div class="cbk-diary-sm">
                    <h4>Diary Entries</h4>
                    <div class="cbk-rcp-entry-sm">
                      <span class="cbk-entry-date">October 4, 2017</span>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi, corporis voluptatibus aut excepturi, molestiae laborum nihil a dolorem, provident error laudantium esse ad officiis reprehenderit. Architecto placeat omnis vitae repellendus voluptatum
                      nobis tempore earum rem eius voluptas assumenda neque voluptatem molestias, consequatur esse ipsa iure, quas! Nostrum, impedit molestiae cumque.</p>
                    </div>
                    
                    <div class="cbk-rcp-entry-sm">
                      <span class="cbk-entry-date">May  12, 2017</span>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi, corporis voluptatibus aut excepturi, molestiae laborum nihil a dolorem, provident error laudantium esse ad officiis reprehenderit. Architecto placeat omnis vitae repellendus voluptatum
                      nobis tempore earum rem eius voluptas assumenda neque voluptatem molestias, consequatur esse ipsa iure, quas! Nostrum, impedit molestiae cumque.</p>
                    </div>
                    
                    <div class="cbk-rcp-entry-sm">
                      <span class="cbk-entry-date">April 24, 2017</span>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi, corporis voluptatibus aut excepturi, molestiae laborum nihil a dolorem, provident error laudantium esse ad officiis reprehenderit. Architecto placeat omnis vitae repellendus voluptatum
                      nobis tempore earum rem eius voluptas assumenda neque voluptatem molestias, consequatur esse ipsa iure, quas! Nostrum, impedit molestiae cumque.</p>
                    </div>
                      
                  </div>
                
                
            </div>
            
        </div>

         
    </div>
   
    
    
     <a href="./recipes">go back</a>
</div>
       
        
    
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