<?php
namespace ckbk;


//Based on h-recipe microformat : http://microformats.org/wiki/h-recipe
//
//Get started
//The class h-recipe is a root class name that indicates the presence of an h-recipe.
//
//p-name, e-instructions, p-ingredient and the other property classnames listed below define elements as properties of the h-recipe.
//
//See microformats-2-parsing to learn more about property classnames.
//
//Properties
//h-recipe properties, inside an element with class h-recipe:
//
//p-name - the name of the recipe
//p-ingredient - describes one or more ingredients used in the recipe.
//p-yield - Specifies the quantity produced by the recipe, like how many persons it satisfyies
//e-instructions - the method of the recipe.
//dt-duration - the time it takes to prepare the meal described by the recipe.
//u-photo - an accompanying image
//
//Experimental properties with wide adoption
//
//p-summary - provides a short summary or introduction
//p-author - person who wrote the recipe, optionally embedded with h-card
//Main article: h-card
//dt-author - the date the recipe was published
//p-nutrition - nutritional information like calories, fat, dietary fiber etc.
//p-category - recipe categories/tags


class Recipe
{
    // property declaration
    public $name = '';
    public $summary = "";
    public $ingredients = '';
    public $author= ''; 
    public $yield = '';
    public $instructions = '';
    public $duration = '';
    public $photo = '';
    public $nutrition = '';
    public $category = '';
    
    function __construct($new_name = "unnamed",
                         $new_summary = "",
                         $new_author = "",
                         $new_yield = "",
                         $new_instructions = "",
                         $new_duration = "",
                         $new_photo = "",
                         $new_nutrition = "",
                         $new_category = ""
                         ){
            $this->summary = $new_summary;
            $this->author = $new_author;
            $this->yield = $new_yield;
            $this->instructions = $new_instructions;
            $this->duration = $new_duration;
            $this->photo = $new_photo;
            $this->nutrition = $new_nutrition;
            $this->category  = $new_category ;
            
           
        }

    // method declaration
    public function get_name() {
			return $this->name;
		}
    
    public function get_recipe($this_key) { 
			return $this->$this_key;  
 		}
    
    public function set_name($new_name) { 
			$this->name = $new_name;  
        }
        
    public function set_recipe($this_key, $new_value) { 
			$this->$this_key = $new_value;  
 		}
            
    public function display_name() {
			 echo $this->name;
		}
        
}

class Ingredient
{
    // property declaration
    public $name = '';
    public $amt = "";
    public $unit = '';
    public $desc= ''; 
    
    function __construct($name = "unnamed",
                         $new_summary = "",
                         $new_author = "",
                         $new_yield = "",
                         $new_desc = "" 
                         ){
            $this->name = $new_summary;
            $this->amt = $new_author;
            $this->unit = $new_yield;
            $this->desc = $new_instructions;
            $this->duration = $new_duration; 
            
           
        }
        
        public function get_ingrd($this_key) { 
			return $this->$this_key;  
 		}
        
         public function set_ingrd($this_key, $new_value) { 
			$this->$this_key = $new_value;  
 		}
            
         public function display_ingrd() {
			 echo $this->name;
		}
}

?>