<?php
include "../db.php";
header('Content-Type: application/json');
$thisRecipe = $_POST["rcpid"];
$sql = mysqli_query($conn,"SELECT * FROM `c-kb-k_v1`.recipes where recipeid = $thisRecipe ;");
$rows = array();
while($r = mysqli_fetch_assoc($sql)) {
    $rows[] = $r;
}
echo json_encode($rows);

$conn->close();

?>