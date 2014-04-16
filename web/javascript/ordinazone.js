function ordina(numero){
    //creo nuovo div che andrà a sostituire il precedente
    var nuovocontenitore= document.getElementById("zoneselezionate").cloneNode();
    var s=nuovocontenitore.childNodes.length;
    for(i=0;i<s;i++)
        nuovocontenitore.removeChild(nuovocontenitore.firstChild);
    //nuovocontenitore.setAttribute("id","zoneselezionate");
    //nuovocontenitore.setAttribute("style","width:300px; height:120px; margin-left:120px; overflow:auto; border: 1px solid #38789d;");
    var contenitore=document.getElementById("zoneselezionate");
    var minidiv=document.getElementById("divzona"+numero);
    var check=document.getElementById("checkboxzona"+numero);
    var span=document.getElementById("spanzona"+numero);
    contenitore.removeChild(minidiv);
    //contenitore.removeChild(check);
    //contenitore.removeChild(span);
    
    //nuovocontenitore.appendChild(check);
    //nuovocontenitore.appendChild(span);
    
    var vetdiv=document.getElementsByName("divzona");
    var vetcheck=document.getElementsByName("zona");
    var vetspan=document.getElementsByName("nomezona");
    //alert(vetcheck.length+" "+vetspan.length);
    var primo=true;
    for(i=0;i<vetdiv.length;i++){
        if(!vetcheck[i].checked&&primo)
            {
                nuovocontenitore.appendChild(minidiv);
                primo=false;
            }
        
        nuovocontenitore.appendChild(vetdiv[i].cloneNode(true));
        //nuovocontenitore.appendChild(vetcheck[i].cloneNode(true));
        //nuovocontenitore.appendChild(vetspan[i].cloneNode(true));
    }
    //alert(vetcheck.length+" "+vetspan.length);
    document.getElementById("zonetotale").replaceChild(nuovocontenitore,contenitore);
    //alert(document.getElementsByName("zona").length+" "+i);
}
