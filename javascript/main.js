
//{"recipeid":"1","recipename":"Chicken Soup","recipedesc":"it's good for you","recipedate":null,"recipeauthorid":null,"recipephoto":null,"recipecooktime":"30","recipepreptime":"30","recipeserving":"4"}
function getRecipes(){
    recipes = [];
    $.getJSON("controllers/recipes.php", function(result){
        $.each(result, function(){
            recipes.push(new Recipe(this.recipeid,this.recipename, this.recipedesc, this.recipeserving,this.recipecooktime, this.recipepreptime ));
            log(this.recipename);
        });
        
        var tmpl = $.templates("#myRecipes");
         
        var html = tmpl.render(recipes);      // Render template using data - as HTML string
        $("#container").html(html);
    });
    log(recipes);
    return (recipes);
}



function Recipe( id, name,desc,serves,cTime, pTime) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.serves = serves;
        this.cTime = cTime;
        this.pTime = pTime;
        
    }

//debuging code
function log(msg){
  console.log(msg);
}