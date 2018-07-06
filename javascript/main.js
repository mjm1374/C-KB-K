//Vars
var throbber = $('#ckb-throbber');
var container = $('#container');
var username = $(".cbk-username");

//debuging code
function log(msg){
  console.log(msg);
}


function setContent(page){
  console.log(page); 
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

  $("#container").on("click",".ckb-recipeCard-sm", function(){
       window.location.hash = '/recipe/view/' + $(this).attr("data-recipe");
    });

function getContent(slug){
  setDisplay('clear');
  log("in content: " + slug);
  data = "slug=" + slug;
  pages = [];
    $.getJSON("controllers/content.php?slug=" + slug, function(result){
        $.each(result, function(){
            pages.push(new Content(this.ct_id,this.ct_title, this.ct_body, this.ct_author, this.ct_date, this.ct_version ));
            //log(this.recipename);
        });
        
        var tmpl = $.templates("#homePage"); // TODO need to dynamacize the template
        var html = tmpl.render(pages);      // Render template using data - as HTML string

        setDisplay('show',html);
         
    });
    log(pages);
    return (pages);
  
///*  var tmpl = $.templates("#homePage");
//  var html = tmpl.render("");
//  setDisplay('show',*/html);
//  console.log("")
  
}

//{"recipeid":"1","recipename":"Chicken Soup","recipedesc":"it's good for you","recipedate":null,"recipeauthorid":null,"recipephoto":null,"recipecooktime":"30","recipepreptime":"30","recipeserving":"4"}
function getRecipes(){
  setDisplay('clear');
    recipes = [];
    $.getJSON("controllers/recipes.php", function(result){
        $.each(result, function(){
            recipes.push(new Recipe(this.recipeid,this.recipename, this.recipedesc, this.recipeserving,this.recipecooktime, this.recipepreptime, this.recipephoto ));
            //log(this.recipename);
        });
        
        var tmpl = $.templates("#myRecipes");
        var html = tmpl.render(recipes);      // Render template using data - as HTML string

        setDisplay('show',html);
         
    });
    log(recipes);
    return (recipes);
}


function getRecipe(recID){
  setDisplay('clear');
    recipes = [];
    $.getJSON("controllers/recipe.php", {rcpid : recID}, function(result){
        $.each(result, function(){
            recipes.push(new Recipe(this.recipeid,this.recipename, this.recipedesc, this.recipeserving,this.recipecooktime, this.recipepreptime, this.recipephoto ));
            //log(this.recipename);
        });
        
        var tmpl = $.templates("#myRecipe");
        var html = tmpl.render(recipes);      // Render template using data - as HTML string

        setDisplay('show',html);
         
    });
    log(recipes);
    return (recipes);
}

      
 // this function manges the screen display, loading screen, data and error msgs, ERROR MSG should be passed through the html var    

  
  
  function setDisplay(d, html){
    switch(d) {
    case 'show':
        throbber.hide();
        container.html(html);
        break;
    case 'clear':
        throbber.hide();
        container.html(html);
        break;
      case 'error':
        throbber.hide();
        container.html(html);
        break;
    default:
        throbber.hide();
        container.html(html);
}
  }
