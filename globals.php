<?php
// Start the session
session_start();

$sitename = "C&Oslash;&Oslash;KB&Oslash;&Oslash;K";
//$actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]/ckbk/";

//Local vs. Logikbox
if(strpos($thisServer, 'logikbox') !== false){
    $basehref = "http://wwww.logikbox.com/ckbk/";    
}else{
    $basehref = "http://localhost:8888/";  
}

?>