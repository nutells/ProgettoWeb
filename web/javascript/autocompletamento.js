
var cont=0;
var index=0;//tiene la citta selezionata
var citta=new Array();
citta[0]="Ferrara";
citta[1]="Bologna";
citta[2]="Bari";
citta[3]="Palermo";
citta[4]="Agrigento";
citta[5]="Messina";
citta[6]="Sassari";
var elettrodomestici=new Array();
elettrodomestici[0]="Lavatrice";
elettrodomestici[1]="Lavastoviglie";

function sposta(nome){
    //document.getElementById("sovrapposto").value=nome;
    document.getElementById("esposto").value=nome;
    toglisuggerimenti();
    document.getElementById("rimuovisuggerimenti").style.display="none";
}

function trova(str1,str2){
	var fin=true;
	if(str2.length===0)fin=false;
	for(var i=0;i<str2.length&&fin;i++)
		{
		if(str1.charAt(i)!==str2.charAt(i)||str2.charAt(i)==="")fin=false;
		}
	return fin;
	
}
function toglisuggerimenti(){
    var tot=document.getElementsByName("suggerimento").length;
        for(c=0;c<tot;c++)
		{
            document.getElementById("suggerimenti").removeChild(document.getElementById("suggerimenti").lastChild);
			cont--;
		}
	document.getElementById("rimuovisuggerimenti").style.display="none";
}
function nuovopunto(nome){
	/*nuovo_elemento = document.createElement("option");
	nuovo_elemento.setAttribute("value",nome);
	nuovo_elemento.innerHTML=nome;
	document.getElementById("lista").appendChild(nuovo_elemento);*/
	//var x=document.getElementById("lista");
	//x.size = x.options.length;
	cont++;
	nuovo_elemento = document.createElement("div");
	nuovo_elemento.setAttribute("class","bordo");
        nuovo_elemento.setAttribute("name","suggerimento");
        nuovo_elemento.setAttribute("id","suggerimento_"+nome);
	nuovo_elemento.innerHTML=nome;
	nuovo_elemento.onclick= function (){sposta(nome);};
        nuovo_elemento.onmouseover=function (){evidenzia("suggerimento_"+nome,true);};
        nuovo_elemento.onmouseout=function (){evidenzia("suggerimento_"+nome,false);};
	document.getElementById("suggerimenti").appendChild(nuovo_elemento);
	
}
function controlla(mostra,evento,array){
	
        if(!mostra&&evento.keyCode===40){
                    scorri(true);
                }
                else if(!mostra&&evento.keyCode===38){
                    scorri(false);
                }
                else{
        document.getElementById("esposto").value = document.getElementById("esposto").value.substr(0,1).toUpperCase()+document.getElementById("esposto").value.substr(1 ).toLowerCase();
        qualcosa=false;
	toglisuggerimenti();
	var r=document.getElementById("esposto").value;
	var i=r;
	//document.getElementById("sovrapposto").value=i;
	for(x=0;x<(eval(array)).length;x++){//ciclo che controlla le città
            if(trova(eval(array)[x],r)||mostra)
		{i=eval(array)[x];
		nuovopunto(eval(array)[x]);
		qualcosa=true;
		}
        }
	if(!mostra){
		//document.getElementById("sovrapposto").value=i;
		if(evento.keyCode===13){
			document.getElementById("esposto").value=i;
			toglisuggerimenti();
		}
                
                
	}
	//else
		//document.getElementById("sovrapposto").value=r;
	if(!qualcosa&&!mostra)
            controlla(true,null,'citta');
            
            

	if(cont>0)
	{
		document.getElementById("rimuovisuggerimenti").style.display="block";
	}
	if(cont===0)
	{
		document.getElementById("rimuovisuggerimenti").style.display="none";
	}
    }
}


function evidenzia(nome,par){
    //alert(nome);
    obj=document.getElementById(nome);
    if(par)
        {obj.setAttribute("class","bordo_hover");
        //
        }
    else
        obj.setAttribute("class","bordo");
}
function scorri(verso){
    continua=true;
    var sugg=document.getElementsByName("suggerimento");
    if(verso===true)
    {
                 
        for(i=0;i<sugg.length&&continua;i++){
            //alert(sugg[i].getAttribute("class"));
            //document.getElementById("res").innerHTML+=" "+sugg[i].getAttribute("class");
            //evidenzia(sugg[i].id,true);
            if(sugg[i].getAttribute("class")==="bordo_hover"){
                //alert(sugg[i].getAttribute("class"));
                if(i===sugg.length-1)
                    {
                        evidenzia(sugg[0].id,true);
                        //document.getElementById("sovrapposto").value=sugg[0].innerHTML;
                        document.getElementById("esposto").value=sugg[0].innerHTML;
                    }
                else
                    {
                        evidenzia(sugg[i+1].id,true);
                        //document.getElementById("sovrapposto").value=sugg[i+1].innerHTML;
                        document.getElementById("esposto").value=sugg[i+1].innerHTML;
                    }
                continua=false;
                
                evidenzia(sugg[i].id,false);
            }   
        }
        if(continua){
            evidenzia(sugg[0].id,true);
            //document.getElementById("sovrapposto").value=sugg[0].innerHTML;
            document.getElementById("esposto").value=sugg[0].innerHTML;
        }
    }
    else
    {
        fin=sugg.length-1;
        for(i=fin;i>=0&&continua;i--){
            //alert(sugg[i].getAttribute("class"));
            //document.getElementById("res").innerHTML+=" "+sugg[i].getAttribute("class");
            //evidenzia(sugg[i].id,true);
            if(sugg[i].getAttribute("class")==="bordo_hover"){
            //alert(sugg[i].getAttribute("class"));
            if(i===0)
                {
                evidenzia(sugg[fin].id,true);
                //document.getElementById("sovrapposto").value=sugg[fin].innerHTML;
            	document.getElementById("esposto").value=sugg[fin].innerHTML;
                }
            else
                {
                evidenzia(sugg[i-1].id,true);
                //document.getElementById("sovrapposto").value=sugg[i-1].innerHTML;
            	document.getElementById("esposto").value=sugg[i-1].innerHTML;
                }
            continua=false;
            
            evidenzia(sugg[i].id,false);
        }   
    }
        if(continua){
            evidenzia(sugg[fin].id,true);
            //document.getElementById("sovrapposto").value=sugg[fin].innerHTML;
         document.getElementById("esposto").value=sugg[fin].innerHTML;
        }
    }
}
