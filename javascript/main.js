//Vars
var throbber = $('#ckb-throbber');
var container = $('#container');
var username = $(".cbk-username");
//debuging code
function log(msg){
  console.log(msg);
}


// Temp login/logout listeners
$("#ckb-signin a").click(function(e){
     e.preventDefault();
     login();
  });

$("#ckb-signout a").click(function(e){
     e.preventDefault();
     log('out');
     logout();
  });


//{"recipeid":"1","recipename":"Chicken Soup","recipedesc":"it's good for you","recipedate":null,"recipeauthorid":null,"recipephoto":null,"recipecooktime":"30","recipepreptime":"30","recipeserving":"4"}
function getRecipes(){
  clearDisplay();
    recipes = [];
    $.getJSON("controllers/recipes.php", function(result){
        $.each(result, function(){
            recipes.push(new Recipe(this.recipeid,this.recipename, this.recipedesc, this.recipeserving,this.recipecooktime, this.recipepreptime, this.recipephoto ));
            //log(this.recipename);
        });
        
        var tmpl = $.templates("#myRecipes");
        var html = tmpl.render(recipes);      // Render template using data - as HTML string

        showDisplay(html);
         
    });
    log(recipes);
    return (recipes);
}



function Recipe( id, name,desc,serves,cTime, pTime, photo) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.serves = serves;
        this.cTime = cTime;
        this.pTime = pTime;
        this.photo = photo;
        
    }
    
    $("#container").on("click",".ckb-recipeCard-sm", function(){
        alert("Recipe Number: " + $(this).attr("data-recipe"));
      });

      
 // these next 2 functions will clear data and show the loadind screen and the ooposite     
function clearDisplay(){
  throbber.show();
  container.html("");
  }
  
function showDisplay(html){
  throbber.hide();
  container.html(html);
 
  }
  
