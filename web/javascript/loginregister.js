var vedi=false;

function chargeCampoRegister(input){
	if(input.id=="regolamentoregister"){
		if(input.checked==true){
			document.getElementById("regolamentoregistererror").style.display="none";
			input.style.border="";
			input.style.boxShadow="";
		}
		return;
	}
	if(input.id=="telefonoregister"){
		if((input.value=="") && ((isNaN(input.value)==false) || (input.value.length>=9)))
		{
			document.getElementById(input.id+"error").style.display="none";
			input.style.border="1px solid #999";
			input.style.boxShadow="";
			return;
		}
	}
	if(input.id=="emailregister"){
		if(emailCheck(input.value)){
			document.getElementById(input.id+"error").style.display="none";
			input.style.border="1px solid #999";
			input.style.boxShadow="";
			return;
		}
	}
	document.getElementById(input.id+"error").style.display="none";
	input.style.border="1px solid #999";
	input.style.boxShadow="";			
}


function register(formregister){
	var errato= false;
	if(formregister.nomeregister.value==formregister.nomeregister.defaultValue){
		document.getElementById("nomeregistererror").style.display="block";
		formregister.nomeregister.style.border="1px solid red";
		formregister.nomeregister.style.boxShadow="0 0px 1px 0 red";
		errato=true;
	}
	if(formregister.cognomeregister.value==formregister.cognomeregister.defaultValue){
		document.getElementById("cognomeregistererror").style.display="block";
		formregister.cognomeregister.style.border="1px solid red";
		formregister.cognomeregister.style.boxShadow="0 0px 1px 0 red";
		errato=true;
	}
	if(formregister.telefonoregister.value!=formregister.telefonoregister.defaultValue){
		if((isNaN(formregister.telefonoregister.value)==true) || (formregister.telefonoregister.value.length <9)){
			document.getElementById("telefonoregistererror").style.display="block";
			formregister.telefonoregister.style.border="1px solid red";
			formregister.telefonoregister.style.boxShadow="0 0px 1px 0 red";
			errato=true;
		}
	}
	if(!emailCheck(formregister.emailregister.value)){
		document.getElementById("emailregistererror").style.display="block";
		formregister.emailregister.style.border="1px solid red";
		formregister.emailregister.style.boxShadow="0 0px 1px 0 red";
		errato=true;
	}
	if(formregister.passwordregister.value==formregister.passwordregister.defaultValue){
		document.getElementById("passwordregistererror").style.display="block";
		formregister.passwordregister.style.border="1px solid red";
		formregister.passwordregister.style.boxShadow="0 0px 1px 0 red";
		errato=true;
	}
	if(formregister.regolamentoregister.checked==false){
		document.getElementById("regolamentoregistererror").style.display="block";
		formregister.regolamentoregister.style.border="2px solid red";
		formregister.regolamentoregister.style.boxShadow="0 0px 1px 0 red";
		errato=true;
	}
	if(errato==false){
		formregister.submit();
	}
}



function login(formlogin){
	var errato= false;
	if(!emailCheck(formlogin.emaillogin.value)){
		document.getElementById("emailloginerror").style.display="block";
		formlogin.emaillogin.style.border="1px solid red";
		formlogin.emaillogin.style.boxShadow="0 0px 1px 0 red";
		errato=true;
	}
	if(formlogin.passwordlogin.value==formlogin.passwordlogin.defaultValue){
		document.getElementById("passwordloginerror").style.display="block";
		formlogin.passwordlogin.style.border="1px solid red";
		formlogin.passwordlogin.style.boxShadow="0 0px 1px 0 red";
		errato=true;
	}
	if(errato==false){
		formlogin.submit();
	}
}

function emailCheck(emailStr) {
        var emailPat = /^(.+)@(.+)$/;
        var specialChars = "\\(\\)<>@,;:\\\\\\\"\\.\\[\\]";
        var validChars = "[^\\s" + specialChars + "]";
        var quotedUser = "(\"[^\"]*\")";
        var ipDomainPat = /^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/;
        var atom = validChars + "+";
        var word = "(" + atom + "|" + quotedUser + ")";
        var userPat = new RegExp("^" + word + "(\\." + word + ")*$");
        var domainPat = new RegExp("^" + atom + "(\\." + atom + ")*$");
        var matchArray = emailStr.match(emailPat);
        if (matchArray == null) {
            return false;
        }
        var user = matchArray[1];
        var domain = matchArray[2];
        if (user.match(userPat) == null) {
            return false;
        }
        var IPArray = domain.match(ipDomainPat);
        if (IPArray != null) {
            for (var i = 1; i <= 4; i++) {
                if (IPArray[i] > 255) {
                    return false;
                }
            }
            return true;
        }
        var domainArray = domain.match(domainPat);
        if (domainArray == null) {
            return false;
        }
        var atomPat = new RegExp(atom, "g");
        var domArr = domain.match(atomPat);
        var len = domArr.length;
        if (domArr[domArr.length - 1].length < 2 ||
            domArr[domArr.length - 1].length > 6) {
            return false;
        }
        if (len < 2) {
            return false;
        }
        return true;
    }

function chargeCampoLogin(input){
	var campook=true;
	if(input.value==input.defaultValue){
		input.value="";
		input.style.color="black";
	}
	else if(input.value==""){
		input.value=input.defaultValue;
		input.style.color="#999";
	}

	if(input.id=="emaillogin"){
		if(emailCheck(input.value))
			campook=false;
	}
	else if(input.id=="passwordlogin"){
		if(input.value!="" && input.value!=input.defaultValue)
			campook=false;
	}
	if(campook==false){
		document.getElementById(input.id+"error").style.display="none";
		input.style.border="1px solid #999";
		input.style.boxShadow="";			
	}
}
function controllatasto(input,event){
    if(event===1){
        if(input.value=="")
            input.style.color="#999";
        else
            chargeCampoLogin(input);
    }
    else if(event.keyCode===8&&input.value.length===1){//controlla se cancella e gli rimane un solo carattere
        input.style.color="#999";
    }
    else
        input.style.color="black";//chargeCampoLogin(input);
}
function controllatastoregister(input,event){
    if(event===1)
        if(input.value==""){
            input.style.color="#999";
			if(input.id=="telefonoregister")chargeCampoRegister(input);
		}
        else
            chargeCampoRegister(input);
    else if(event.keyCode===8&&input.value.length===1){//controlla se cancella e gli rimane un solo carattere
        input.style.color="#999";
    }
    else
        input.style.color="black";//chargeCampoRegister(input);
}

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
            
            $('div#comparsa').animate({height:"108px"},"slow");
        }
   else
    {
        $('div#comparsa').animate({height:"0px"},"medium",function(){
        displ="none";
        document.getElementById("comparsa").style.display="none";
        document.getElementById("log").style.display="block";
        document.getElementById("register").style.display="none";
			//document.getElementById("comparsa").style.width="250px";
			//document.getElementById("comparsa").style.marginLeft="330px";
			//document.getElementById("trianglelogin").style.marginLeft="175px";
	resetcampi(document.getElementById("formlogin"));//il reset avviene solo alla chiusura del login/register
	resetcampi(document.getElementById("formregister"));
        });
        
        
    }
   //$('div#comparsa').slideToggle("medium");
   //div.setAttribute("style","display: "+displ+";width:300px;position:absolute;right:90px;top:45px; z-index:10;");
	
}

function mostraRegistrazione(form){
    document.getElementById("register").style.display="block";
	//document.getElementById("comparsa").style.width="330px";
	//document.getElementById("comparsa").style.marginLeft="250px";
	//document.getElementById("trianglelogin").style.marginLeft="255px";
	$('div#comparsa').animate({height:"340px"},"slow",document.getElementById("log").setAttribute("style","display:none;"));
    document.getElementById("register").setAttribute("style","display:block;");
	resetcampi(form);
    
}

function returnLogin(form){
	
	$('div#comparsa').animate({height:"108px"},"slow");
    document.getElementById("log").style.display="block";
	document.getElementById("register").style.display="none";

	resetcampi(form);	
}
function resetcampi(form){
	for(var i=0;i<form.length;i++){
		if(form[i].type=="text"){
			form[i].value=form[i].defaultValue;
			form[i].style.color="#999";
			document.getElementById(form[i].id+"error").style.display="none";
			form[i].style.border="1px solid #999";
			form[i].style.boxShadow="";
		}
		if(form[i].type=="checkbox"){
			form[i].checked=false;
			form[i].style.color="#999";
			document.getElementById(form[i].id+"error").style.display="none";
			form[i].style.border="1px solid #999";
			form[i].style.boxShadow="";
		}
	}
}
