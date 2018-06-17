<?php
    include_once 'db.php';
    include_once 'classes.php';
    include "vendor/autoload.php";
    

?>


<!DOCTYPE html>
<html>
<head>
    <link rel="apple-touch-icon" sizes="180x180" href="img/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="img/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicon-16x16.png">
    <link rel="manifest" href="img/site.webmanifest">
    <link rel="mask-icon" href="img/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
    
    <link href="https://fonts.googleapis.com/css?family=Tajawal" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

</head>
<body>
    
    <header>
        <?php include_once  "header.php"; ?>
        <nav>
            <?php include_once  "nav.php"; ?>
        </nav>
    </header>
    
    <div id="container" class="cb-main-container">
        <h1>Hello world</h1>

        <p>My first paragraph.</p>
        
    </div>




<footer>
    <?php include_once  "footer.php"; ?>
</footer>
</body>
    <script src="./js/bundle.js" type="text/javascript"></script>
    <script>
    $( document ).ready(function() {
        console.log( "ready!" );
    });
    </script>
</html>