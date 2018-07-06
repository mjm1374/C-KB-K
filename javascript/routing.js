//var home = function () { getContent('home') };
//var content = function (slug) { getContent(slug); };
//var cook = function () { console.log("cook"); };
//var contact = function () { console.log("contack"); };
//var recipes = function () { getRecipes(); };
//var recipe = function (rcpId) { getRecipe(rcpId);};
//
//
//var routes = {
//  '/' : home,
//  '/pages/:slug' : content,
//  '/cook': cook,
//  '/contact': contact,
//  '/recipes': [recipes, function() {
//    console.log("An inline route handler.");
//  }],
//  '/recipe/view/:rcpid': recipe
//};
//
//var router = Router(routes);
//
//router.init(['/']);