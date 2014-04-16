		//INIZIALIZZO IL CONTROLLO DELLE ZONE
		var zonainvista=new Array();
		for(i=0;i<30;i++)
			zonainvista[i]=false;
			
		//FUNZIONE DI GESTIONE DEGLI EVENTI	
		function mapevent(id,funzione){
			if(funzione=="click"){
				if(zonainvista[id]==false)
				{
					aggiungiImmagine(id);
					aggiungiInput(id);
					zonainvista[id]=true;
                    ordina(id);
				}
				else
				{
					rimuoviImmagine(id);
					rimuoviInput(id);
					zonainvista[id]=false;
				}
			}
			else if(funzione=="focus"){
					aggiungiImmagine(id);
			}
			else if(funzione=="nofocus"){
				if(zonainvista[id]==false){
					rimuoviImmagine(id);
				}
			}
		
		}
		//FUNZIONI DI GESTIONE DELLE IMMAGINI		
        function aggiungiImmagine(id){
			if(document.getElementById("mappa_"+id)==null){
				nuovo_elemento = document.createElement("img");
				nuovo_elemento.setAttribute("id","mappa_"+id);
				nuovo_elemento.setAttribute("src","mappe/ferrara/mappa_"+id+".gif");
				nuovo_elemento.setAttribute("style","position:absolute;border-radius: 15px;");
				document.getElementById("porzionimappa").appendChild(nuovo_elemento);
			}
        }
		
        function rimuoviImmagine(id){
			if(document.getElementById("mappa_"+id)!=null){
				var zona = document.getElementById("mappa_"+id);
				zona.parentNode.removeChild(zona);
			}
        }	
		//FUNZIONI DEGLI INPUT DA INVIARE NELLA RICERCA
        function aggiungiInput(id){
				document.getElementById("checkboxzona"+id).checked=true;

        }		
        function rimuoviInput(id){
				document.getElementById("checkboxzona"+id).checked=false;
        }
        
        	//FUNZIONE PER ATTIVARE L'IMMAGINE IN RISULTATI
        function mostraImmagine(mostra){
        	if(mostra){
        		document.getElementById('immaginetot').style.display='block';
				document.getElementById('zoneselezionate').style.height='340px';
			}
        	else{
        		document.getElementById('immaginetot').style.display='none';
				document.getElementById('zoneselezionate').style.height='150px';
			}
        }
