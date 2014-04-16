var vedi=false;
function mostraLogin(){
    /*var div=document.getElementsByClassName("titlebarlimited")[0];
    login=document.createElement("div");
    login.innerHTML="login";
    login.setAttribute("style","width:100px; height:200px;position:absolute;right:200px;top:100px; z-index:10;");
    div.appendChild(login);
    */
   vedi=!vedi;
   var displ;
   if(vedi)
        {displ="block";
            
            $('div#comparsa').animate({height:"120px"},"slow");
        }
   else
    {
        $('div#comparsa').animate({height:"0px"},"medium",function(){
            document.getElementsByClassName("blocktitle backgroundcolor")[0].innerHTML="Login";
            displ="none";
            document.getElementById("comparsa").setAttribute("style","display: none;height:0px;width:200px; position:absolute;right:90px;top:45px; z-index:10;clear:both;");
            document.getElementById("log").setAttribute("style","display:block;");
            document.getElementById("register").setAttribute("style","display:none;");
            $('input#emaila').attr("value","Email").removeAttr("style");
            $('input#passw').attr("value","Password").removeAttr("style");
        });
        
        
    }
   //$('div#comparsa').slideToggle("medium");
   //div.setAttribute("style","display: "+displ+";width:300px;position:absolute;right:90px;top:45px; z-index:10;");
}

function mostraRegistrazione(){
    var div=document.getElementsByClassName("blocktitle backgroundcolor")[0];
    div.innerHTML="Registrazione";
    document.getElementById("register").setAttribute("style","display:block;")
    $('div#comparsa').animate({height:"240px"},"slow",document.getElementById("log").setAttribute("style","display:none;"));
    //document.getElementById("register").setAttribute("style","display:block;");
    
}
function azzera(inp){
    inp.removeAttribute("style");
    inp.value="";
    inp.onfocus=null;
}

function controllaInput(scelta){
    var rit=true;
    if(scelta==0){
        var email=document.getElementById("emaila");
        var passw=document.getElementById("passw");
        //alert(email+" "+email.indexOf("@"));
        if(email.value.indexOf('@')<0){
            email.value="Email errata";
            email.setAttribute("style","background-color:red;");
            email.onfocus=function(){azzera(email);};
            rit=false;
        }
        if(passw.value==""){
            passw.setAttribute("style","background-color:red;");
            passw.onfocus=function(){azzera(passw);};
            rit=false;
        }
        return rit;
        
    }
}
function rit(scelta){
    if(scelta===true)
        return false;
    else
        return true;
}