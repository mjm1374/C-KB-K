
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

<div class="ckb-recipeCard-lg" data-recipe="{{:id}}">
  

    <div class="ckb-rcp-content">
      
      <div class="cbk-rcp-top"></div>
      
      <div class="cbk-rcp-left">
        {{if photo }}
          <div class="ckb-recipeImg-lg" style="background: url('img-assets/{{:photo}}')">
            
        {{else}}
          <div class="ckb-recipeNoImg-lg">
      
        {{/if}}
              <h2>{{:name}}</h2>
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
          
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit maiores cupiditate aliquam facilis. Totam deserunt, fugit veniam repellendus, quidem explicabo numquam perspiciatis laudantium distinctio, itaque non cumque excepturi quae et reiciendis
          alias nemo provident cupiditate molestiae accusamus consectetur rerum ducimus voluptatum voluptas. Quae natus ipsam praesentium ipsa? Autem tenetur nostrum, dicta necessitatibus dolorum, quos. Aspernatur dolore officia repellendus perspiciatis nisi laudantium
          beatae dicta libero asperiores blanditiis consectetur in vero nihil, commodi est sequi tempore porro accusamus voluptas recusandae vel sint cumque. Commodi eligendi maxime reiciendis dolor assumenda, tempora rerum officia rem totam cupiditate, aperiam
          ullam quasi, aliquam quis, placeat voluptatibus.</p>
          
        </div>
        
      </div>
      
      <div class="cbk-rcp-right">
        
        <div class="cbk-cook-profile">
          <div class="cbk-cheif-clear">
            <div class="cbk-cheif-photo-sm" style="background: url('img-assets/the_boys.jpg');"></div>
            <h3>Mr. Cookington</h3>
          </div>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, ex molestiae iusto adipisci! Aspernatur perferendis labore dolorem, nesciunt ex, illo iure rem voluptatum omnis. Fuga mollitia deserunt earum error odio voluptatum nostrum officia numquam
          quaerat dicta eaque veniam rem illum, quisquam, corporis quo culpa, commodi tempore aspernatur perferendis aliquam optio. Officiis inventore velit dignissimos debitis nulla illo quaerat ducimus recusandae quis architecto voluptas placeat vel sunt itaque,
          laboriosam impedit expedita fuga facere sint non minima.</p>
        </div>
        
        <div class="ckb-recipe-ad-lg">
          <div class="cbk-adholder">
            <img src="img/ads/ad-space-300x250.png" alt="palceholder" >
          </div>
        </div>
        
        <div class="cbk-diary-sm">
          <h4>Diary Entries</h4>
          <div class="cbk-rcp-entry-sm">
            <span class="cbk-entry-date">October 4, 2017</span>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi, corporis voluptatibus aut excepturi, molestiae laborum nihil a dolorem, provident error laudantium esse ad officiis reprehenderit. Architecto placeat omnis vitae repellendus voluptatum
            nobis tempore earum rem eius voluptas assumenda neque voluptatem molestias, consequatur esse ipsa iure, quas! Nostrum, impedit molestiae cumque.</p>
          </div>
          
          <div class="cbk-rcp-entry-sm">
            <span class="cbk-entry-date">May  12, 2017</span>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi, corporis voluptatibus aut excepturi, molestiae laborum nihil a dolorem, provident error laudantium esse ad officiis reprehenderit. Architecto placeat omnis vitae repellendus voluptatum
            nobis tempore earum rem eius voluptas assumenda neque voluptatem molestias, consequatur esse ipsa iure, quas! Nostrum, impedit molestiae cumque.</p>
          </div>
          
          <div class="cbk-rcp-entry-sm">
            <span class="cbk-entry-date">April 24, 2017</span>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi, corporis voluptatibus aut excepturi, molestiae laborum nihil a dolorem, provident error laudantium esse ad officiis reprehenderit. Architecto placeat omnis vitae repellendus voluptatum
            nobis tempore earum rem eius voluptas assumenda neque voluptatem molestias, consequatur esse ipsa iure, quas! Nostrum, impedit molestiae cumque.</p>
          </div>
            
        </div>
        
      </div>
      
      
      
      
         
    </div>
   
    
    
     <a href="./recipes">go back</a>
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