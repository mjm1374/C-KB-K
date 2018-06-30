
  <!-- Declare a JsRender template, in a script block: -->
  <script id="homePage" type="text/x-jsrender">
 
    <div class="cbk-full-wrapper"  >
        
            <h1>Home</h1>
  
        <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis officia rerum repellat praesentium voluptatibus ab delectus, aut error voluptatum vel soluta debitis, accusantium mollitia nihil! Natus repudiandae delectus esse, odit vitae sed, fuga
            debitis dignissimos! Saepe obcaecati adipisci cumque necessitatibus doloribus eos blanditiis voluptatem quae voluptatum, rem temporibus excepturi magni fuga molestiae cupiditate. Esse, veritatis quis laboriosam, alias corrupti dolorem molestias recusandae
            fugit facilis, eius repellat aliquam error iste nulla eos labore. Sit doloremque quis ab voluptatum aliquam repellat accusantium magnam vitae beatae eveniet, tempora ullam, saepe officiis odit similique expedita mollitia id reiciendis consequuntur. Recusandae
            reiciendis voluptate ducimus, eaque delectus animi provident in natus ratione? Nobis ipsam odio hic corporis magni numquam ea. Molestias nostrum, dolorum praesentium quaerat repellat tempora, neque recusandae harum optio.
        </p>
        <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta quibusdam inventore distinctio autem, aliquid tempora quod, maiores perferendis iure est, beatae hic. Necessitatibus ratione similique blanditiis placeat ea perferendis dicta iste error
            vero possimus porro distinctio, eligendi magnam sequi. Magni totam optio, minima veritatis ipsa earum nobis commodi. Veritatis quibusdam numquam voluptatibus sit nemo, esse iure non totam unde error aut eligendi eius perspiciatis maiores, accusantium
            enim quasi quidem itaque impedit mollitia. Ad unde, sed, odio est perferendis earum soluta provident optio reprehenderit possimus tempore. Minus ipsam incidunt quo sed soluta, odit nostrum dignissimos quis distinctio illo accusamus repellendus ratione.
        </p>
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