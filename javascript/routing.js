var home = function () { getContent(); };
var cook = function () { console.log("cook"); };
var contact = function () { console.log("co0ntack"); };
var recipes = function () { getRecipes(); };
var recipe = function (rcpId) { getRecipe(rcpId);};


var routes = {
  '/' : home,
  '/cook': cook,
  '/contact': contact,
  '/recipes': [recipes, function() {
    console.log("An inline route handler.");
  }],
  '/recipe/view/:rcpid': recipe
};

var router = Router(routes);

router.init(['/']);