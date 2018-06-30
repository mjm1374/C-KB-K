
  <!-- Declare a JsRender template, in a script block: -->
  <script id="homePage" type="text/x-jsrender">
 
    <div class="cbk-full-wrapper">
        <h1>
            {{>title}}
        
        </h1>
        {{:body}}
        <a href="#/recipes">Go to all recipes</a>
    </div>
  
</script>

<script id="myRecipe" type="text/x-jsrender">

<div class="ckb-recipeCard-sm" data-recipe="{{:id}}">
    <div class="ckb-recipeImg-sm" style="background: url('img-assets/{{if photo }}{{:photo}}{{else}}Food-Icon.jpg{{/if}}')">
        <h2>{{:name}}</h2>
    </div>

    <p>
        {{:desc}}
    </p>
    <p>
        Serves: {{:serves}} </br>
        Prep Times: {{:pTime}} </br>
        Cook Time: {{:cTime}} </br>
    </p>
     <a href="#/recipes">go back</a>
</div>

</script>

<!-- Declare a JsRender template, in a script block: -->
<script id="myRecipes" type="text/x-jsrender">

<div class="ckb-recipeCard-sm" data-recipe="{{:id}}">
    <div class="ckb-recipeImg-sm" style="background: url('img-assets/{{if photo }}{{:photo}}{{else}}Food-Icon.jpg{{/if}}')">
        <h2>{{:name}}</h2>
    </div>

    <p>
        {{:desc}}
    </p>
    <p>
        Serves: {{:serves}} </br>
        Prep Times: {{:pTime}} </br>
        Cook Time: {{:cTime}} </br>
    </p>
</div>

</script>