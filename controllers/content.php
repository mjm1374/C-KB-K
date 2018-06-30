<?php
include "../db.php";
header('Content-Type: application/json');
$cid = $_GET["cid"];

$rs = mysqli_query($conn,"SELECT * FROM `c-kb-k_v1`.content where ct_id = $cid");

$rows = array();
while($r = mysqli_fetch_assoc($rs)) {
    $rows[] = $r;
}
echo json_encode($rows);

$conn->close();

?>

