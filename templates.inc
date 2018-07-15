
  <!-- Declare a JsRender template, in a script block: -->
  <script id="homePage" type="text/x-jsrender">
 
    <div class="cbk-full-wrapper">
        <h1>
            {{>title}}
        
        </h1>
        {{:body}}
        <a href="./recipes">Go to all recipes</a>
    </div>
  
</script>

<script id="myRecipe" type="text/x-jsrender">

        {{if photo }}
          <div class="ckb-recipeImg-lg" style="background: url('img-assets/{{:photo}}')">
            <h2>{{:name}}</h2>
        {{else}}
          <div class="ckb-recipeNoImg-lg">
            <h2>{{:name}}</h2>  
        {{/if}}
              
          </div>
      
        <div class="ckb-recipe-desc-lg">
          <h3></h3>
          <p>
              {{:desc}}
              
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta voluptas mollitia, corrupti, illum tempora similique repellat cum, veniam doloribus minus eligendi nostrum. Laborum minima sed accusantium aliquid magni, sint, culpa totam placeat maiores
              molestias, eum aut? Earum sed ut deserunt aperiam repellendus temporibus voluptatem praesentium, unde incidunt quos. Laboriosam, sapiente veritatis adipisci! Consequatur vel rerum temporibus enim facere blanditiis dolorum voluptas consequuntur, eligendi
              ipsam. Error, possimus. Quas nostrum praesentium vero perferendis, harum odit saepe provident, beatae mollitia, voluptatem necessitatibus quibusdam dolore. Praesentium cupiditate dignissimos voluptatem doloremque mollitia consequuntur, pariatur provident
              eaque dolor temporibus quisquam asperiores optio a exercitationem debitis soluta velit laborum laboriosam est maxime perferendis deleniti. Nam molestiae ab culpa fugiat tenetur, iure, nesciunt nisi atque eius. Voluptatibus, eveniet earum esse, aperiam
              deleniti non aliquid odit ad voluptatum nobis, obcaecati eaque placeat architecto asperiores quod blanditiis alias! Ipsa facere ex quisquam quos quibusdam iusto accusamus possimus. Eligendi repellat molestias, pariatur dolor a maxime ipsum facilis nobis
              voluptates alias recusandae accusantium cupiditate, quos aperiam placeat at eaque doloremque. Velit in, exercitationem optio harum hic possimus. Molestias commodi illum cumque, hic. Veniam doloremque numquam, unde explicabo nihil earum labore et eligendi,
              laborum officiis natus, non debitis. Quasi non odio voluptatibus tempore?</h4>
              
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam, libero dolores dignissimos eos numquam neque, maxime placeat sit earum necessitatibus laborum! Consectetur voluptatem, cumque dolore aut animi ipsa aspernatur commodi pariatur ratione,
              ut dolores, accusantium distinctio qui explicabo architecto odit voluptatibus obcaecati at in eligendi similique? Earum non, soluta itaque inventore aliquam quidem ea aspernatur voluptatum illo veniam vitae repudiandae amet officiis autem omnis quis,
              nihil illum libero! Quia alias aliquam provident, voluptatum doloribus nam, expedita blanditiis quisquam ea dolor, modi itaque magni pariatur magnam similique. Doloremque repellendus iusto ab numquam iste asperiores ipsam, modi inventore est aspernatur,
              enim eaque quisquam magnam, adipisci repellat, sapiente sequi nemo dolores a repudiandae! Labore nesciunt inventore dolore quos magnam? Animi, ullam nostrum, nisi quod ab sequi earum inventore.</p>
          </p>
        </div>
      
      <div class="ckb-recipe-ing-lg">
          <h4>Instruction for {{:serves}} </h4>
  
          <p>
              Prep Times: {{:pTime}} </br>
              Cook Time: {{:cTime}} </br>
          </p>
          
        </div>

</script>



<!-- Declare a JsRender template, in a script block: -->
<script id="ingredientList" type="text/x-jsrender">
 
 {{if type == 'Ingredient'}}
    <li class="ingrdList">{{:amount}} {{:name}} </li>
 {{/if}}
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