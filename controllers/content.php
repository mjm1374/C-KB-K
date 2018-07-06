<?php
include "../db.php";
header('Content-Type: application/json');
$slug = $_GET["slug"];

$rs = mysqli_query($conn,"SELECT * FROM `c-kb-k_v1`.content where ct_slug = '$slug'");

$rows = array();
while($r = mysqli_fetch_assoc($rs)) {
    $rows[] = $r;
}
echo json_encode($rows);

$conn->close();

?>

