function Recipe( id, name,desc,serves,cTime, pTime, photo) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.serves = serves;
        this.cTime = cTime;
        this.pTime = pTime;
        this.photo = photo;
        
    }
//{"RecipeID":"1","ItemID":"10","Quantity":"1","Type":"Ingredient","Name":"Kosher salt\n\n","Amount":"1 Tbsp"}]    
function Ingredient( id, name, amount, type, quantity, rcpid) {
        this.id = id;
        this.name = name;
        this.amount = amount;
        this.type = type;
        this.quantity = quantity;
        this.rcpid =  rcpid;
    }

function Content(id, title,body,author,date,ver){
    this.id = id;
    this.title =  title;
    this.body =  body;
    this.author = author;
    this.date = date;
    this.ver =  ver;
    
    
    this.summary = function (htmlString) {
            this.summary = htmlString.replace(/<[^>]+>/g, '').substring(1, 250) +  "...";
        }; 
    
    // ****TODO -  Convert a mysql epoch_date to JS  
    //https://stackoverflow.com/questions/1765803/convert-a-mysql-date-to-javascript-date/1765857
    //var dateParts = isoFormatDateString.split("-");
    //var jsDate = new Date(dateParts[0], dateParts[1] - 1, dateParts[2].substr(0,2));    
}