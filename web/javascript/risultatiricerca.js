var ricercaavanzatavisib=false;

function mostravociavanzate(){
	if(ricercaavanzatavisib==false){
		
		document.getElementById("ricerca_avanzata").style.display="block";
		$('div#ricerca_avanzata').animate({height:"430px"},"slow");
		document.getElementById("labelricerca_avanzata").innerHTML="Nascondi voci avanzate"
		ricercaavanzatavisib=true;
	}
	else{
		$('div#ricerca_avanzata').animate({height:"0px"},"medium",function(){
                    displ="none";
                    document.getElementById("ricerca_avanzata").style.display="none";
                    document.getElementById("labelricerca_avanzata").innerHTML="Mostra voci avanzate"
                });
		ricercaavanzatavisib=false;
	}
}