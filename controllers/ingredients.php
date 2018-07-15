<?php
include "../db.php";
header('Content-Type: application/json');
$thisRecipe = $_GET["rcpid"];
$rs = mysqli_query($conn,"SELECT *  
FROM  `c-kb-k_v1`.RecipeLineitems, `c-kb-k_v1`.recipeItems
Where RecipeID  = $thisRecipe and RecipeLineitems.itemID = recipeItems.itemID;");

//$rs = $mysqli->query( 'CALL get_recipe($thisRecipe, @RecipeName, @RecipeDesc)' );
//$rs = $mysqli->query( 'SELECT @first, @last' );
//while($row = $rs->fetch_object())
//{
//debug($row);
//}
$rows = array();
while($r = mysqli_fetch_assoc($rs)) {
    $rows[] = $r;
}
echo json_encode($rows);

$conn->close();

?>

