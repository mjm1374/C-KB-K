<?php
include "../db.php";
header('Content-Type: application/json');
$sql = mysqli_query($conn,"SELECT * FROM `c-kb-k_v1`.recipes;");
$rows = array();
while($r = mysqli_fetch_assoc($sql)) {
    $rows[] = $r;
}
echo json_encode($rows);

$conn->close();

?>