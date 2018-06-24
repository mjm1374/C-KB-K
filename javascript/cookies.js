function chkCookies(){
    if(Cookies.get('name')){
        updateUserPanel('in');   
    }else{
        log("not a logged in user");
        updateUserPanel('out');
    }    
}

function updateUserPanel(log){
    var thisusername = "";
    if(log == "in"){
        thisusername = Cookies.get('name');
        $("#ckb-signin").hide();
        $("#ckb-signout").show();
        
    }else {
         thisusername = "";
        $("#ckb-signin").show();
        $("#ckb-signout").hide();
        
    }
    $(".cbk-username").html(thisusername);
        
}

function login(){
    Cookies.set('name', 'Mike Mc', {expires: 1});
    updateUserPanel('in');
}


function logout(){
    Cookies.remove('name');
    updateUserPanel('out');
}