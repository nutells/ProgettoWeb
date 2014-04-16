var numsingole=1;
var numdoppie=1;
var singole=false;
var doppie=false;
var MAXNUMSTANZE=10;
var data;

		function function_singola(){
			if(singole==false)
			{
				document.getElementById('singole').style.display="block";
				document.getElementById('prezzosingola').style.display="block";
				singole=true;
			}
			else
			{
				document.getElementById('singole').style.display="none";
				document.getElementById('prezzosingola').style.display="none";
				singole=false;
				numsingole=1;
				function_numsingole(0);
			}
		}
		
		function function_doppia(){
			if(doppie==false)
			{
				document.getElementById('doppie').style.display="block";
				document.getElementById('prezzodoppia').style.display="block";
				doppie=true;
			}
			else
			{
				document.getElementById('doppie').style.display="none";
				document.getElementById('prezzodoppia').style.display="none";
				doppie=false;
				numdoppie=1;
				function_numdoppie(0);
			}
		}
		
		function function_numsingole(numero){
			numsingole=numsingole+numero;
			if(numsingole<=1){
				numsingole=1;
				document.getElementById('numerosingole').innerHTML="<b>1</b>";
				document.getElementById('labelsingole').innerHTML="Singola";
				document.getElementById('labelprezzosingole').innerHTML="Singola (&euro;)";
				return;
			}
			else if(numsingole >MAXNUMSTANZE)
				numsingole=MAXNUMSTANZE;
			document.getElementById('labelsingole').innerHTML="Singole";
			document.getElementById('numerosingole').innerHTML="<b>"+numsingole+"</b>";
			document.getElementById('labelprezzosingole').innerHTML="Singole (&euro;)";
		}
		
		function function_numdoppie(numero){
			numdoppie=numdoppie+numero;
			if(numdoppie<=1){
				numdoppie=1;
				document.getElementById('numerodoppie').innerHTML="<b>1</b>";
				document.getElementById('labeldoppie').innerHTML="Doppia";
				document.getElementById('labelprezzodoppie').innerHTML="Doppia (&euro;)";
				
				return;
			}
			else if(numdoppie >MAXNUMSTANZE)
				numdoppie=MAXNUMSTANZE;
			document.getElementById('numerodoppie').innerHTML="<b>"+numdoppie+"</b>";
			document.getElementById('labeldoppie').innerHTML="Doppie";
			document.getElementById('labelprezzodoppie').innerHTML="Doppie (&euro;)";
			
		}
function impostaData(){
    
    var giorni=document.getElementsByName("giorno")[0];
    var mesi=document.getElementsByName("mese")[0];
    var anni=document.getElementsByName("anno")[0];
    caricaOption(giorni,mesi,anni);
    data=new Date();
    //alert(data.getDate()+" "+eval(data.getMonth()+1)+" "+data.getFullYear());
    creaGiorni(giorni,eval(data.getMonth()+1),data.getFullYear());
    giorni.selectedIndex=data.getDate()-1;
    mesi.selectedIndex=data.getMonth();
    anni.selectedIndex=0;
    
}
function creaGiorni(giorni,mese,anno){
    
    var limite=31;
    if(mese===1||mese===3||mese===5||mese===7||mese===8||mese===10||mese===12){
        limite=32;
    }else if(mese===2){
        //alert(anno);
        if(anno%4===0){
            
            limite=30;
        }
        else
            limite=29;
    }
    //alert(limite+" "+mese);
    settaElementi(giorni,limite);
    if(giorni.selectedIndex+1>=limite)
        giorni.selectedIndex=limite-2;
    
}

function settaElementi(cont,limite){
    
    var vet=cont.getElementsByTagName("option");
    for(i=29;i<limite;i++){
            vet[i-1].setAttribute("style","display:block;");
        }
    for(i=limite;i<=31;i++){
        
            vet[i-1].setAttribute("style","display:none;");
        }
        //vet[0].setAttribute("style","display:none");
}
function caricaOption(giorni,mesi,anni){
    for(i=1;i<=31;i++){
        var m=document.createElement("option");
        m.value=i;
        m.innerHTML=i;
        giorni.appendChild(m);
        if(i<=12){
            var t=m.cloneNode(true);
            //t.addEventListener('click',function(){alert("s");});//creaGiorni(giorni,mesi.selectedIndex+1,anni.getElementsByTagName("option")[anni.selectedIndex].value);}
            mesi.appendChild(t);
            //alert(t.onclick);
        }
    }
    
}

function conquilini_misto(){
	if(document.getElementById("conquilini_solomaschi").checked==false && document.getElementById("conquilini_solodonne").checked==false)
		document.getElementById("conquilini_misto").checked=true; 
}
function conquilini_solomaschi(){
	if(document.getElementById("conquilini_solodonne").checked==false && document.getElementById("conquilini_solomaschi").checked==false)
		document.getElementById("conquilini_misto").checked=true; 
	if(document.getElementById("conquilini_solodonne").checked==true && document.getElementById("conquilini_solomaschi").checked==true)
		document.getElementById("conquilini_solodonne").checked=false; 
}
function conquilini_solodonne(){
	if(document.getElementById("conquilini_solodonne").checked==false && document.getElementById("conquilini_solomaschi").checked==false)
		document.getElementById("conquilini_misto").checked=true; 
	if(document.getElementById("conquilini_solodonne").checked==true && document.getElementById("conquilini_solomaschi").checked==true)
		document.getElementById("conquilini_solomaschi").checked=false; 
}