<?php
 
$thisServer =  $_SERVER[HTTP_HOST];

 if(strpos($thisServer, 'logikbox') !== false){
    $servername = "mysql23.ezhostingserver.com";
    $username = "mjm1374";
    $password = "Helix914!";
    $dbsucess = null;
    
 }else{
    $servername = "127.0.0.1";
    $username = "ckbkDev";
    $password = ":6.nyMg]T-3dVcyD";
    $dbsucess = null;
    
 }
//echo $username . " - "  . $thisServer;
// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("DB Connection failed: " . $conn->connect_error);
} 
//echo "Connected successfully";
$dbsucess = "conneced to DB";

?>
