<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento senza titolo</title>

<style type="text/css">
    @import url(css/layout.css);
	@import url(css/selezionecitta.css);
	@import url(css/risultatiricerca.css);
	@import url(css/inevidenza.css);
	@import url(css/sidebar.css);
	@import url(css/loginregister.css);
	
#etichettamappa{
	width:100px;
	height:36px;
	text-align:center;
}
</style>
<script type="text/javascript" src="javascript/autocompletamento.js"></script>
<script type="text/javascript" src="javascript/selezionezone.js"></script>
<script type="text/javascript" src="javascript/ricerca_numerostanza.js"></script>
<script type="text/javascript" src="javascript/ordinazone.js"></script>
<script type="text/javascript" src="javascript/loginregister.js"></script>
<script type="text/javascript" src="javascript/annuncisidebar.js"></script>
<script type="text/javascript" src="javascript/jquery.js"></script>
<script type="text/javascript" src="javascript/star.js"></script>
<script type="text/javascript" src="javascript/risultatiricerca.js"></script>
<script type="text/javascript" src="javascript/risultati.js"></script>
<script language="javascript" type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>


<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
 
<script type="text/javascript">
function mapinitialize () {
    var geocoder = new google.maps.Geocoder();
    var map;
	
	var options = {
     	zoom: 12,
		center: new google.maps.LatLng(44.8312923, 11.615676200000053),
     	mapTypeId: google.maps.MapTypeId.ROADMAP,
		disableDefaultUI: true
     };
	 map = new google.maps.Map(document.getElementById('map'), options);

	geocoder.geocode( {'address': 'Via bolzoni 38 - Ferrara'}, function(results,status) {
        var marker = new google.maps.Marker({position: results[0].geometry.location, map: map, title: 'Casa mia'});
		var infowindow = new google.maps.InfoWindow({
     	 content: "<div id='etichettamappa'>2 singole 230&euro;<br> 2 doppie 200&euro;</div><div style='text-align:center;'><button class='button' style='width:95px; margin-top:3px; font-size:10px;'>VEDI ANNUNCIO</button></div>"
  		});		
		google.maps.event.addListener(marker, 'click', function() {
    		infowindow.open(map,marker);
 		 });
    });  
	 
geocoder.geocode( {'address': 'Via Arianuova 1 - Ferrara'}, function(results,status) {
        var marker = new google.maps.Marker({position: results[0].geometry.location, map: map, title: 'Arianuova'});
		var infowindow = new google.maps.InfoWindow({
     	 content: "<div id='etichettamappa'>3 singole 210&euro;</div><div style='text-align:center;'><button class='button' style='width:95px; margin-top:3px; font-size:10px;'>VEDI ANNUNCIO</button></div>"
  		});		
		google.maps.event.addListener(marker, 'click', function() {
    		infowindow.open(map,marker);
 		 });		
    }); 
	
	
}
</script>

</head>
<body onload="document.getElementById('esposto').value='Ferrara';impostaData();mapinitialize();">

<%@ include file="elements/header.jsp" %>

<div class="container">
  <div class="content">
 	<div class="block"  style="margin-top: 30px">
   		<div class="blocktitle backgroundcolor">
       		<div class="circleicons"><img src="image/risultati.png" style="width: 48px; margin-top: -2px;margin-left: -2px;" /></div>
            <div style="margin-left: 60px;">Risultati</div>
            <div style="float:right; margin-top:-26px; margin-right:5px;">
                <div style="width:30px; height:25px; float:right; background-image:url(image/order.png); background-size:contain;" onmouseover="$(this).css('cursor','pointer');" onclick="chargeorder(this);"></div>
                <div style="width:100px; height:28px; float:right">
                    <select class="input" style="width:90px;background-color: white; padding-top:0px; padding-bottom:0px;font-size:12px; margin-top:4px;">
                        <option>Reputazione</option>
                        <option>Prezzo</option>
                        <option>Disponibilita'</option>
                    </select>
                </div>
                <div style="width:130px; height:28px; float:right; font-size:11px;">Ordina la ricerca</div>
            </div>
      	</div>
        <div>
        
        
			<div style="width: 100%; height: 150px; padding-top:5px;">
				<div class="annunciorisultati">
					<div class="immagineannunciorisultati"></div>
 					<div class="descrizioneannunciorisultati">
                    	<div style="height:100%; width:150px; float:left; text-align:center; line-height:30px;;">

                			<span style="font-weight:bold;">Zona acquedotto</span><br />
                    		<span style="font-size:14px;">2 singole a 220 &euro; <br /> 3 doppe a 150 &euro;</span>
                        </div>
                        <div style="height:100%; width:340px; float:left">
							<span style="font-size:14px;">descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione </span>                        
                        </div>
					</div>
					<div style="height:125px; width:150px; float:left; ">
                		<div style="height:45px;">
                    		<div style="position: absolute; z-index: 3; background-color: white; width: 140px; height: 50px; margin-top:5px; margin-left:10px; border: 2px solid #38789d;;border-radius:7px;"></div>
                        	<div style="position: absolute;height:50px; width:50px; margin-left:5px; background-image:url(image/user.png); float:left;  border:2px solid #38789d; border-radius:7px 0px 0px 7px; z-index: 100; margin-top:5px;"></div>
                        	<div style="position: absolute;height:50px; width:80px; margin-left:62px; margin-top:10px; float:left; font-weight:bold; font-size:15px; text-align:center; z-index: 100;"> Mariottide<br />
                            <div style="margin-top:5px; margin-left:5px;">
                            	<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
    							<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
   								<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                            </div>
                             </div>
                    	</div>
                    	<div style="padding-top:7px; text-align:center; height:35px">
                    		<div style="margin-top:10px; margin-left:12px;">
                            	<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
   								<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left;"></div>                            
                            </div>
                   		</div>
                    	<div style="padding-top:2px; text-align:center">
                    		<span style="font-size:13px; color:#174c6b">(5 Recensioni)</span>
                    	</div>
                    	<div style="padding-top:3px; text-align:center;">
                    		<button type="button" class="button" style="font-size:18px; width:140px;">Vedi annuncio</button>
                    	</div>       
                	</div>
				</div>  
			</div>
            
            



			<div style="width: 100%; height: 150px;">
				<div class="annunciorisultati" style=" background-color: rgb(237, 243, 246);">
					<div class="immagineannunciorisultati"></div>
 					<div class="descrizioneannunciorisultati">
						<div style="font-weight:bold;">Zona Acquedotto</div>
                        <div style="margin-top:5px;">2 singole a 350&euro; e 1 doppia a 200 &euro;</div>
						<div style="font-size:14px; margin-top:10px;">descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione </div>
					</div>
					<div style="height:125px; width:150px; float:left; ">
                		<div style="height:45px;">
                    		<div style="position: absolute; z-index: 3; background-color: white; width: 140px; height: 50px; margin-top:5px; margin-left:10px; border: 2px solid #38789d;;border-radius:7px;"></div>
                        	<div style="position: absolute;height:50px; width:50px; margin-left:5px; background-image:url(image/user.png); float:left;  border:2px solid #38789d; border-radius:7px 0px 0px 7px; z-index: 100; margin-top:5px;"></div>
                        	<div style="position: absolute;height:50px; width:80px; margin-left:62px; margin-top:10px; float:left; font-weight:bold; font-size:15px; text-align:center; z-index: 100;"> Mariottide<br />
                            <div style="margin-top:5px; margin-left:5px;">
                            	<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
    							<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
   								<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                            </div>
                             </div>
                    	</div>
                    	<div style="padding-top:7px; text-align:center; height:35px">
                    		<div style="margin-top:10px; margin-left:12px;">
                            	<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;" onmouseover="overstar('1',this);"></div>
    							<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
   								<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left;"></div>                            
                            </div>
                   		</div>
                    	<div style="padding-top:2px; text-align:center">
                    		<span style="font-size:13px; color:#174c6b">(5 Recensioni)</span>
                    	</div>
                    	<div style="padding-top:3px; text-align:center;">
                    		<button type="button" class="button" style="font-size:18px; width:140px;">Vedi annuncio</button>
                    	</div>       
                	</div>
				</div>  
			</div>



			<div style="width: 100%; height: 150px;">
				<div class="annunciorisultati">
					<div class="immagineannunciorisultati"></div>
 					<div class="descrizioneannunciorisultati">
						<span style="font-weight:bold;">2 Singole e 2 Doppie in Zona Acquedotto</span><br />
						<span style="font-size:14px;">descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione </span>
					</div>
					<div style="height:125px; width:150px; float:left; ">
                		<div style="height:45px;">
                    		<div style="position: absolute; z-index: 3; background-color: white; width: 140px; height: 50px; margin-top:5px; margin-left:10px; border: 2px solid #38789d;;border-radius:7px;"></div>
                        	<div style="position: absolute;height:50px; width:50px; margin-left:5px; background-image:url(image/user.png); float:left;  border:2px solid #38789d; border-radius:7px 0px 0px 7px; z-index: 100; margin-top:5px;"></div>
                        	<div style="position: absolute;height:50px; width:80px; margin-left:62px; margin-top:10px; float:left; font-weight:bold; font-size:15px; text-align:center; z-index: 100;"> Mariottide<br />
                            <div style="margin-top:5px; margin-left:5px;">
                            	<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
    							<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
   								<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                            </div>
                             </div>
                    	</div>
                    	<div style="padding-top:7px; text-align:center; height:35px">
                    		<div style="margin-top:10px; margin-left:12px;">
                            	<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
   								<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left;"></div>                            
                            </div>
                   		</div>
                    	<div style="padding-top:2px; text-align:center">
                    		<span style="font-size:13px; color:#174c6b">(5 Recensioni)</span>
                    	</div>
                    	<div style="padding-top:3px; text-align:center;">
                    		<button type="button" class="button" style="font-size:18px; width:140px;">Vedi annuncio</button>
                    	</div>       
                	</div>
				</div>  
			</div>




			<div style="width: 100%; height: 150px;;">
				<div class="annunciorisultati" style=" background-color: rgb(237, 243, 246);">
					<div class="immagineannunciorisultati"></div>
 					<div class="descrizioneannunciorisultati">
						<span style="font-weight:bold;">2 Singole e 2 Doppie in Zona Acquedotto</span><br />
						<span style="font-size:14px;">descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione </span>
					</div>
					<div style="height:125px; width:150px; float:left; ">
                		<div style="height:45px;">
                    		<div style="position: absolute; z-index: 3; background-color: white; width: 140px; height: 50px; margin-top:5px; margin-left:10px; border: 2px solid #38789d;;border-radius:7px;"></div>
                        	<div style="position: absolute;height:50px; width:50px; margin-left:5px; background-image:url(image/user.png); float:left;  border:2px solid #38789d; border-radius:7px 0px 0px 7px; z-index: 100; margin-top:5px;"></div>
                        	<div style="position: absolute;height:50px; width:80px; margin-left:62px; margin-top:10px; float:left; font-weight:bold; font-size:15px; text-align:center; z-index: 100;"> Mariottide<br />
                            <div style="margin-top:5px; margin-left:5px;">
                            	<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
    							<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
   								<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                            </div>
                             </div>
                    	</div>
                    	<div style="padding-top:7px; text-align:center; height:35px">
                    		<div style="margin-top:10px; margin-left:12px;">
                            	<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
   								<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left;"></div>                            
                            </div>
                   		</div>
                    	<div style="padding-top:2px; text-align:center">
                    		<span style="font-size:13px; color:#174c6b">(5 Recensioni)</span>
                    	</div>
                    	<div style="padding-top:3px; text-align:center;">
                    		<button type="button" class="button" style="font-size:18px; width:140px;">Vedi annuncio</button>
                    	</div>       
                	</div>
				</div>  
			</div>




			<div style="width: 100%; height: 150px;;">
				<div class="annunciorisultati">
					<div class="immagineannunciorisultati"></div>
 					<div class="descrizioneannunciorisultati">
						<span style="font-weight:bold;">2 Singole e 2 Doppie in Zona Acquedotto</span><br />
						<span style="font-size:14px;">descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione </span>
					</div>
					<div style="height:125px; width:150px; float:left; ">
                		<div style="height:45px;">
                    		<div style="position: absolute; z-index: 3; background-color: white; width: 140px; height: 50px; margin-top:5px; margin-left:10px; border: 2px solid #38789d;;border-radius:7px;"></div>
                        	<div style="position: absolute;height:50px; width:50px; margin-left:5px; background-image:url(image/user.png); float:left;  border:2px solid #38789d; border-radius:7px 0px 0px 7px; z-index: 100; margin-top:5px;"></div>
                        	<div style="position: absolute;height:50px; width:80px; margin-left:62px; margin-top:10px; float:left; font-weight:bold; font-size:15px; text-align:center; z-index: 100;"> Mariottide<br />
                            <div style="margin-top:5px; margin-left:5px;">
                            	<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
    							<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
   								<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                            </div>
                             </div>
                    	</div>
                    	<div style="padding-top:7px; text-align:center; height:35px">
                    		<div style="margin-top:10px; margin-left:12px;">
                            	<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
   								<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left;"></div>                            
                            </div>
                   		</div>
                    	<div style="padding-top:2px; text-align:center">
                    		<span style="font-size:13px; color:#174c6b">(5 Recensioni)</span>
                    	</div>
                    	<div style="padding-top:3px; text-align:center;">
                    		<button type="button" class="button" style="font-size:18px; width:140px;">Vedi annuncio</button>
                    	</div>       
                	</div>
				</div>  
			</div>




			<div style="width: 100%; height: 150px;;">
				<div class="annunciorisultati" style=" background-color: rgb(237, 243, 246);">
					<div class="immagineannunciorisultati"></div>
 					<div class="descrizioneannunciorisultati">
						<span style="font-weight:bold;">2 Singole e 2 Doppie in Zona Acquedotto</span><br />
						<span style="font-size:14px;">descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione </span>
					</div>
					<div style="height:125px; width:150px; float:left; ">
                		<div style="height:45px;">
                    		<div style="position: absolute; z-index: 3; background-color: white; width: 140px; height: 50px; margin-top:5px; margin-left:10px; border: 2px solid #38789d;;border-radius:7px;"></div>
                        	<div style="position: absolute;height:50px; width:50px; margin-left:5px; background-image:url(image/user.png); float:left;  border:2px solid #38789d; border-radius:7px 0px 0px 7px; z-index: 100; margin-top:5px;"></div>
                        	<div style="position: absolute;height:50px; width:80px; margin-left:62px; margin-top:10px; float:left; font-weight:bold; font-size:15px; text-align:center; z-index: 100;"> Mariottide<br />
                            <div style="margin-top:5px; margin-left:5px;">
                            	<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
    							<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
   								<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                            </div>
                             </div>
                    	</div>
                    	<div style="padding-top:7px; text-align:center; height:35px">
                    		<div style="margin-top:10px; margin-left:12px;">
                            	<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
   								<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left;"></div>                            
                            </div>
                   		</div>
                    	<div style="padding-top:2px; text-align:center">
                    		<span style="font-size:13px; color:#174c6b">(5 Recensioni)</span>
                    	</div>
                    	<div style="padding-top:3px; text-align:center;">
                    		<button type="button" class="button" style="font-size:18px; width:140px;">Vedi annuncio</button>
                    	</div>       
                	</div>
				</div>  
			</div>



			<div style="width: 100%; height: 150px;;">
				<div class="annunciorisultati">
					<div class="immagineannunciorisultati"></div>
 					<div class="descrizioneannunciorisultati">
						<span style="font-weight:bold;">2 Singole e 2 Doppie in Zona Acquedotto</span><br />
						<span style="font-size:14px;">descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione </span>
					</div>
					<div style="height:125px; width:150px; float:left; ">
                		<div style="height:45px;">
                    		<div style="position: absolute; z-index: 3; background-color: white; width: 140px; height: 50px; margin-top:5px; margin-left:10px; border: 2px solid #38789d;;border-radius:7px;"></div>
                        	<div style="position: absolute;height:50px; width:50px; margin-left:5px; background-image:url(image/user.png); float:left;  border:2px solid #38789d; border-radius:7px 0px 0px 7px; z-index: 100; margin-top:5px;"></div>
                        	<div style="position: absolute;height:50px; width:80px; margin-left:62px; margin-top:10px; float:left; font-weight:bold; font-size:15px; text-align:center; z-index: 100;"> Mariottide<br />
                            <div style="margin-top:5px; margin-left:5px;">
                            	<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
    							<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
   								<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                            </div>
                             </div>
                    	</div>
                    	<div style="padding-top:7px; text-align:center; height:35px">
                    		<div style="margin-top:10px; margin-left:12px;">
                            	<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
   								<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left;"></div>                            
                            </div>
                   		</div>
                    	<div style="padding-top:2px; text-align:center">
                    		<span style="font-size:13px; color:#174c6b">(5 Recensioni)</span>
                    	</div>
                    	<div style="padding-top:3px; text-align:center;">
                    		<button type="button" class="button" style="font-size:18px; width:140px;">Vedi annuncio</button>
                    	</div>       
                	</div>
				</div>  
			</div>



			<div style="width: 100%; height: 150px;;">
				<div class="annunciorisultati" style=" background-color: rgb(237, 243, 246);">
					<div class="immagineannunciorisultati"></div>
 					<div class="descrizioneannunciorisultati">
						<span style="font-weight:bold;">2 Singole e 2 Doppie in Zona Acquedotto</span><br />
						<span style="font-size:14px;">descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione </span>
					</div>
					<div style="height:125px; width:150px; float:left; ">
                		<div style="height:45px;">
                    		<div style="position: absolute; z-index: 3; background-color: white; width: 140px; height: 50px; margin-top:5px; margin-left:10px; border: 2px solid #38789d;;border-radius:7px;"></div>
                        	<div style="position: absolute;height:50px; width:50px; margin-left:5px; background-image:url(image/user.png); float:left;  border:2px solid #38789d; border-radius:7px 0px 0px 7px; z-index: 100; margin-top:5px;"></div>
                        	<div style="position: absolute;height:50px; width:80px; margin-left:62px; margin-top:10px; float:left; font-weight:bold; font-size:15px; text-align:center; z-index: 100;"> Mariottide<br />
                            <div style="margin-top:5px; margin-left:5px;">
                            	<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
    							<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
   								<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                            </div>
                             </div>
                    	</div>
                    	<div style="padding-top:7px; text-align:center; height:35px">
                    		<div style="margin-top:10px; margin-left:12px;">
                            	<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
   								<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left;"></div>                            
                            </div>
                   		</div>
                    	<div style="padding-top:2px; text-align:center">
                    		<span style="font-size:13px; color:#174c6b">(5 Recensioni)</span>
                    	</div>
                    	<div style="padding-top:3px; text-align:center;">
                    		<button type="button" class="button" style="font-size:18px; width:140px;">Vedi annuncio</button>
                    	</div>       
                	</div>
				</div>  
			</div>


			<div style="width: 100%; height: 150px;;">
				<div class="annunciorisultati">
					<div class="immagineannunciorisultati"></div>
 					<div class="descrizioneannunciorisultati">
						<span style="font-weight:bold;">2 Singole e 2 Doppie in Zona Acquedotto</span><br />
						<span style="font-size:14px;">descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione descrizione </span>
					</div>
					<div style="height:125px; width:150px; float:left; ">
                		<div style="height:45px;">
                    		<div style="position: absolute; z-index: 3; background-color: white; width: 140px; height: 50px; margin-top:5px; margin-left:10px; border: 2px solid #38789d;;border-radius:7px;"></div>
                        	<div style="position: absolute;height:50px; width:50px; margin-left:5px; background-image:url(image/user.png); float:left;  border:2px solid #38789d; border-radius:7px 0px 0px 7px; z-index: 100; margin-top:5px;"></div>
                        	<div style="position: absolute;height:50px; width:80px; margin-left:62px; margin-top:10px; float:left; font-weight:bold; font-size:15px; text-align:center; z-index: 100;"> Mariottide<br />
                            <div style="margin-top:5px; margin-left:5px;">
                            	<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
    							<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
   								<div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
    							<div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                            </div>
                             </div>
                    	</div>
                    	<div style="padding-top:7px; text-align:center; height:35px">
                    		<div style="margin-top:10px; margin-left:12px;">
                            	<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
   								<div style="background-image:url(image/stary.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left; margin-right:3px;"></div>
    							<div style="background-image:url(image/starg.png); width:25px; height:25px; background-size:contain; float:left;"></div>                            
                            </div>
                   		</div>
                    	<div style="padding-top:2px; text-align:center">
                    		<span style="font-size:13px; color:#174c6b">(5 Recensioni)</span>
                    	</div>
                    	<div style="padding-top:3px; text-align:center;">
                    		<button type="button" class="button" style="font-size:18px; width:140px;">Vedi annuncio</button>
                    	</div>       
                	</div>
				</div>  
			</div>
            
            <div class="backgroundcolor" style="height:35px; width:100%; margin-bottom:10px; font-weight:bold; line-height:25px;">
            	<div style="float:left; width:60px; height:25px; margin:5px; margin-left:200px; color:white;">Pagine </div>
            	<div style="float:left; width:26px; height:21px; margin:5px; background-color:white; text-align:center; border:2px solid white;"><</div>
            	<div style="float:left; width:26px; height:21px; margin:5px; background-color:white; text-align:center; border:2px solid white;"><<</div>
                <div class="backgroundcolor" style="float:left; width:26px; height:21px; margin:5px; text-align:center; border:2px solid white; color:white;">1</div>
            	<div style="float:left; width:26px; height:21px; margin:5px; background-color:white; text-align:center; border:2px solid white;">2</div>
            	<div style="float:left; width:26px; height:21px; margin:5px; background-color:white; text-align:center; border:2px solid white;">3</div>
            	<div style="float:left; width:26px; height:21px; margin:5px; background-color:white; text-align:center; border:2px solid white;">4</div>
            	<div style="float:left; width:26px; height:21px; margin:5px; background-color:white; text-align:center; border:2px solid white;">5</div>
            	<div style="float:left; width:26px; height:21px; margin:5px; background-color:white; text-align:center; border:2px solid white;">></div>
            	<div style="float:left; width:26px; height:21px; margin:5px; background-color:white; text-align:center; border:2px solid white;">>></div>
            </div>



		</div>
  	</div>
  </div>
  <div class="sidebar">
  	
    <div id="map" style="margin-top: 30px; border:0px;height:200px; border-radius:10px;box-shadow: 0 1px 2px 0 #000;"></div>
    
  	<div style="margin-top: 20px">
    	<div class="blocktitlesidebar">
        	<div class="circleicons"><img src="image/ultimericerche.png" style="width: 48px; margin-top: -2px;margin-left: -1px;" /></div>
        	<div style="margin-left: 60px; color:white; ">Affina la tua ricerca</div>
        </div>
        

		<div style="margin-left:2px; padding-top:10px;">
            <div>
                <div class="nomecamporicerca">Citta'</div>
                <div class="campiricerca" style="height:20px;">
                        <div style="width: 110px; position: relative; z-index: 20;">
                            <div id="rimuovisuggerimenti" style=" margin-left:128px;">
                            	<a style="text-decoration: none;color: black;" onclick="toglisuggerimenti();" onmouseover="$(this).css('cursor','pointer')" onselectstart="return false" onmousedown="return false">^</a>
                            </div>
                            <div class="sovrapposta" id="contiene" style="width:138px; margin-left:-1px;" >
								<input type="text" id="esposto" class="input" style="width: 100%;font-weight: bold;" onkeyup="controlla(false,event,'citta');" onfocus="controlla(true,event,'citta');" />
                                <div id="suggerimenti" style="width: 118px; border-left: 1px solid #999; border-right: 1px solid #999;">
                                </div>
                        	</div>
                      	</div>
            	</div>
			</div>
        </div>  
            

            
            <div id="zonetotale" style="margin-top:20px;">
                	<div class="nomecamporicerca">Zone</div>
                    
                                <div id="immaginetot" style="position:absolute;margin-left:-270px;margin-top: 0px; z-index:130; display: none;">
                <div id="porzionimappa" style="position:absolute;">
                    <img src="mappe/ferrara/mappa.gif" style="position:absolute;border-radius: 15px;" />
                </div>
				<img src="mappe/ferrara/mappa_trasp.gif" style="position:absolute;" usemap="#zone" />
                <map name="zone" id="zone" style="display:inline">
                    <area  onmouseout="mapevent('1','nofocus');" onmouseover="mapevent('1','focus');$(this).css('cursor','pointer');" onclick="mapevent('1','click');" shape="poly" coords="45,120,45,120,2,91,2,91,0,0,0,0,370,0,370,0,370,341,370,341,1,341,1,341,0,97,0,97,25,120,25,120,9,140,9,140,32,227,32,227,43,244,43,244,23,272,23,272,40,289,40,289,95,320,95,320,133,288,133,288,193,333,193,333,242,310,242,310,245,274,245,274,335,272,335,272,334,263,334,263,348,191,348,191,363,132,363,132,353,67,353,67,257,55,257,55,162,35,162,35,118,25,118,25,95,58,95,58,44,119,44,119"alt="Fuori Mura" title="Fuori Mura" />
                    <area onmouseout="mapevent('2','nofocus');" onmouseover="mapevent('2','focus');$(this).css('cursor','pointer');" onclick="mapevent('2','click');" shape="poly" coords="245,275,245,275,241,308,241,308,194,333,194,333,135,287,135,287,167,254,167,254,172,263,172,263,211,274,211,274"alt="Zona San Giorgio" title="Zona San Giorgio" />
                    <area onmouseout="mapevent('3','nofocus');" onmouseover="mapevent('3','focus');$(this).css('cursor','pointer');" onclick="mapevent('3','click');" shape="poly" coords="101,180,101,180,129,203,129,203,134,201,134,201,165,253,165,253,97,320,97,320,42,288,42,288,25,272,25,272" alt="Zona Via Bologna" title="Zona Via Bologna" />
                    <area onmouseout="mapevent('4','nofocus');" onmouseover="mapevent('4','focus');$(this).css('cursor','pointer');" onclick="mapevent('4','click');" shape="poly" coords="99,177,99,177,43,243,43,243,31,223,31,223,8,140,8,140,26,120,26,120" alt="Zona Ingegneria" title="Zona Ingegneria" />
                    <area onmouseout="mapevent('5','nofocus');" onmouseover="mapevent('5','focus');$(this).css('cursor','pointer');" onclick="mapevent('5','click');" shape="poly" coords="352,67,352,67,361,132,361,132,347,189,347,189,260,152,260,152,260,59,260,59" alt="Zona Via Ipercoop Le Mura" title="Zona Ipercoop Le Mura" />
                    <area onmouseout="mapevent('6','nofocus');" onmouseover="mapevent('6','focus');$(this).css('cursor','pointer');" onclick="mapevent('6','click');" shape="poly" coords="261,156,261,156,346,192,346,192,333,263,333,263,309,270,309,270,213,265,213,265,233,234,233,234,241,210,241,210,259,174,259,174" alt="Zona Via Pomposa" title="Zona Via Pomposa" />
                    <area onmouseout="mapevent('7','nofocus');" onmouseover="mapevent('7','focus');$(this).css('cursor','pointer');" onclick="mapevent('7','click');" shape="poly" coords="163,38,163,38,254,55,254,55,258,112,258,112,129,69,129,69" alt="Zona Arianuova" title="Zona Arianuova" />
                    <area onmouseout="mapevent('8','nofocus');" onmouseover="mapevent('8','focus');$(this).css('cursor','pointer');" onclick="mapevent('8','click');" shape="poly" coords="119,25,119,25,159,35,159,35,116,76,116,76,109,68,109,68,96,61,96,61" alt="Zona Porta Catena" title="Zona Porta Catena" />
                    <area onmouseout="mapevent('9','nofocus');" onmouseover="mapevent('9','focus');$(this).css('cursor','pointer');" onclick="mapevent('9','click');" shape="poly" coords="118,79,118,79,168,118,168,118,183,119,183,119,196,103,196,103,206,100,206,100,127,70,127,70" alt="Zona Porta Po" title="Zona Porta Po" />
                    <area onmouseout="mapevent('10','nofocus');" onmouseover="mapevent('10','focus');$(this).css('cursor','pointer');" onclick="mapevent('10','click');" shape="poly" coords="231,107,231,107,212,142,212,142,188,119,188,119,197,105,197,105,212,101,212,101" alt="Zona Piazza Ariostea" title="Zona Piazza Ariostea" />
                    <area onmouseout="mapevent('11','nofocus');" onmouseover="mapevent('11','focus');$(this).css('cursor','pointer');" onclick="mapevent('11','click');" shape="poly" coords="235,108,235,108,258,116,258,116,256,171,256,171,215,143,215,143" alt="Zona Mammut" title="Zona Mammut" />
                    <area onmouseout="mapevent('12','nofocus');" onmouseover="mapevent('12','focus');$(this).css('cursor','pointer');" onclick="mapevent('12','click');" shape="poly" coords="95,64,95,64,107,69,107,69,114,79,114,79,80,111,80,111,88,140,88,140,79,150,79,150,50,123,50,123" alt="Zona Stazione" title="Zona Stazione" />
                    <area onmouseout="mapevent('13','nofocus');" onmouseover="mapevent('13','focus');$(this).css('cursor','pointer');" onclick="mapevent('13','click');" shape="poly" coords="115,80,115,80,164,119,164,119,155,127,155,127,108,88,108,88" alt="Zona Cavour" title="Zona Cavour" />
                    <area onmouseout="mapevent('14','nofocus');" onmouseover="mapevent('14','focus');$(this).css('cursor','pointer');" onclick="mapevent('14','click');" shape="poly" coords="184,123,184,123,168,122,168,122,157,131,157,131,157,138,157,138,152,152,152,152,157,157,157,157,151,161,151,161,164,182,164,182,181,175,181,175,191,169,191,169,211,144,211,144" alt="Zona Centro" title="Zona Centro" />
                    <area onmouseout="mapevent('15','nofocus');" onmouseover="mapevent('15','focus');$(this).css('cursor','pointer');" onclick="mapevent('15','click');" shape="poly" coords="213,147,213,147,254,174,254,174,240,205,240,205,194,170,194,170" alt="Zona Corso Giovecca" title="Zona Corso Giovecca" />
                    <area onmouseout="mapevent('16','nofocus');" onmouseover="mapevent('16','focus');$(this).css('cursor','pointer');" onclick="mapevent('16','click');" shape="poly" coords="106,91.5,106,91.5,126,109.5,126,109.5,123,130.5,123,130.5,104,116.5,104,116.5,89,129.5,89,129.5,84,112.5,84,112.5" alt="Zona Stadio" title="Zona Stadio" />
                    <area onmouseout="mapevent('17','nofocus');" onmouseover="mapevent('17','focus');$(this).css('cursor','pointer');" onclick="mapevent('17','click');" shape="poly" coords="129,110.5,129,110.5,155,130.5,155,130.5,155,138.5,155,138.5,147,150.5,147,150.5,126,131.5,126,131.5" alt="Zona Garibaldi" title="Zona Garibaldi" />
                    <area onmouseout="mapevent('18','nofocus');" onmouseover="mapevent('18','focus');$(this).css('cursor','pointer');" onclick="mapevent('18','click');" shape="poly" coords="121,134.5,121,134.5,105,119.5,105,119.5,89,132.5,89,132.5,91,140.5,91,140.5,82,151.5,82,151.5,86,156.5,86,156.5" alt="Zona Aquedotto" title="Zona Aquedotto" />
                    <area onmouseout="mapevent('19','nofocus');" onmouseover="mapevent('19','focus');" onclick="mapevent('19','click');" shape="poly" coords="117,140.5,117,140.5,139,179.5,139,179.5,137,189.5,137,189.5,131,195.5,131,195.5,88,159.5,88,159.5" alt="Zona EX MOF" title="Zona EX MOF" />
                    <area onmouseout="mapevent('20','nofocus');" onmouseover="mapevent('20','focus');$(this).css('cursor','pointer');" onclick="mapevent('20','click');" shape="poly" coords="125,135.5,125,135.5,153,157.5,153,157.5,148,159.5,148,159.5,153,169.5,153,169.5,143,178.5,143,178.5,121,138.5,121,138.5" alt="Zona Piangipane/Ripagrande" title="Zona Piangipane/Ripagrande" />
                    <area onmouseout="mapevent('21','nofocus');" onmouseover="mapevent('21','focus');$(this).css('cursor','pointer');" onclick="mapevent('21','click');" shape="poly" coords="154,173,154,173,142,182,142,182,140,190,140,190,138,193,138,193,146,203,146,203,165,191,165,191" alt="Zona Piazza Travaglio" title="Zona Piazza Travaglio" />
                    <area onmouseout="mapevent('22','nofocus');" onmouseover="mapevent('22','focus');$(this).css('cursor','pointer');" onclick="mapevent('22','click');" shape="poly" coords="168,193,168,193,198,222,198,222,228,235,228,235,210,263,210,263,179,258,179,258,154,223,154,223,147,206,147,206" alt="Zona Architettura" title="Zona Architettura" />
                    <area onmouseout="mapevent('23','nofocus');" onmouseover="mapevent('23','focus');$(this).css('cursor','pointer');" onclick="mapevent('23','click');" shape="poly" coords="193,173,193,173,237,209,237,209,233,217,233,217,235,222,235,222,231,230,231,230,200,219,200,219,164,185,164,185,181,179,181,179" alt="Zona Via Saraceno" title="Zona Via Saraceno" />
                   
                </map>
			</div>
                    
                    <div id="zoneselezionate" onmouseover="mostraImmagine(true);" onmouseout="mostraImmagine(false);" class="campiricerca" >
                    
                    
                    
                        <div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('1','focus');" onmouseout="mapevent('1','nofocus');" onclick="mapevent('1','click');" onselectstart="return false" onmousedown="return false" id="divzona1" name="divzona"  class="divzona"><input type="checkbox" value="1" name="zona" id="checkboxzona1"/><span id="spanzona1" name="nomezona">Fuori Mura <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('2','focus');" onmouseout="mapevent('2','nofocus');" onclick="mapevent('2','click');"  onselectstart="return false" onmousedown="return false" id="divzona2" name="divzona"  class="divzona"><input type="checkbox" value="2" name="zona" id="checkboxzona2"/><span id="spanzona2" name="nomezona">San Giorgio <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('3','focus');" onmouseout="mapevent('3','nofocus');" onclick="mapevent('3','click');" onselectstart="return false" onmousedown="return false" id="divzona3" name="divzona"  class="divzona"><input type="checkbox" value="3" name="zona" id="checkboxzona3"/><span id="spanzona3" name="nomezona">Via Bologna <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('4','focus');" onmouseout="mapevent('4','nofocus');" onclick="mapevent('4','click');" onselectstart="return false" onmousedown="return false"  id="divzona4" name="divzona"  class="divzona"><input type="checkbox" value="4" name="zona" id="checkboxzona4"/><span id="spanzona4" name="nomezona">Ingegneria <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('5','focus');" onmouseout="mapevent('5','nofocus');" onclick="mapevent('5','click');" onselectstart="return false" onmousedown="return false" id="divzona5" name="divzona"  class="divzona"><input type="checkbox" value="5" name="zona" id="checkboxzona5"/><span id="spanzona5" name="nomezona">Ipercoop Le Mura <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('6','focus');" onmouseout="mapevent('6','nofocus');" onclick="mapevent('6','click');" onselectstart="return false" onmousedown="return false" id="divzona6" name="divzona"  class="divzona"><input type="checkbox" value="6" name="zona" id="checkboxzona6"/><span id="spanzona6" name="nomezona">Via Pomposa <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('7','focus');" onmouseout="mapevent('7','nofocus');" onclick="mapevent('7','click');" onselectstart="return false" onmousedown="return false" id="divzona7" name="divzona"  class="divzona"><input type="checkbox" value="7" name="zona" id="checkboxzona7"/><span id="spanzona7" name="nomezona">Arianuova <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('8','focus');" onmouseout="mapevent('8','nofocus');" onclick="mapevent('8','click');" onselectstart="return false" onmousedown="return false" id="divzona8" name="divzona"  class="divzona"><input type="checkbox" value="8" name="zona" id="checkboxzona8"/><span id="spanzona8" name="nomezona">Porta Catena <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('9','focus');" onmouseout="mapevent('9','nofocus');" onclick="mapevent('9','click');" onselectstart="return false" onmousedown="return false" id="divzona9" name="divzona"  class="divzona"><input type="checkbox" value="9" name="zona" id="checkboxzona9"/><span id="spanzona9" name="nomezona">Porta Po <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('10','focus');" onmouseout="mapevent('10','nofocus');" onclick="mapevent('10','click');" onselectstart="return false" onmousedown="return false" id="divzona10" name="divzona"  class="divzona"><input type="checkbox" value="10" name="zona" id="checkboxzona10"/><span id="spanzona10" name="nomezona">Piazza Ariostea <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('11','focus');" onmouseout="mapevent('11','nofocus');" onclick="mapevent('11','click');" onselectstart="return false" onmousedown="return false" id="divzona11" name="divzona"  class="divzona"><input type="checkbox" value="11" name="zona" id="checkboxzona11"/><span id="spanzona11" name="nomezona">Mammut <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('12','focus');" onmouseout="mapevent('12','nofocus');" onclick="mapevent('12','click');" onselectstart="return false" onmousedown="return false" id="divzona12" name="divzona"  class="divzona"><input type="checkbox" value="12" name="zona" id="checkboxzona12"/><span id="spanzona12" name="nomezona">Stazione <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('13','focus');" onmouseout="mapevent('13','nofocus');" onclick="mapevent('13','click');" onselectstart="return false" onmousedown="return false" id="divzona13" name="divzona"  class="divzona"><input type="checkbox" value="13" name="zona" id="checkboxzona13"/><span id="spanzona13" name="nomezona">Cavour <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('14','focus');" onmouseout="mapevent('14','nofocus');" onclick="mapevent('14','click');" onselectstart="return false" onmousedown="return false" id="divzona14" name="divzona"  class="divzona"><input type="checkbox" value="14" name="zona" id="checkboxzona14"/><span id="spanzona14" name="nomezona">Centro <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('15','focus');" onmouseout="mapevent('15','nofocus');" onclick="mapevent('15','click');" onselectstart="return false" onmousedown="return false" id="divzona15" name="divzona"  class="divzona"><input type="checkbox" value="15" name="zona" id="checkboxzona15"/><span id="spanzona15" name="nomezona">Corso Giovecca <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('16','focus');" onmouseout="mapevent('16','nofocus');" onclick="mapevent('16','click');" onselectstart="return false" onmousedown="return false" id="divzona16" name="divzona"  class="divzona"><input type="checkbox" value="16" name="zona" id="checkboxzona16"/><span id="spanzona16" name="nomezona">Stadio <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('17','focus');" onmouseout="mapevent('17','nofocus');" onclick="mapevent('17','click');" onselectstart="return false" onmousedown="return false" id="divzona17" name="divzona"  class="divzona"><input type="checkbox" value="17" name="zona" id="checkboxzona17"/><span id="spanzona17" name="nomezona">Garibaldi <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('18','focus');" onmouseout="mapevent('18','nofocus');" onclick="mapevent('18','click');" onselectstart="return false" onmousedown="return false" id="divzona18" name="divzona"  class="divzona"><input type="checkbox" value="18" name="zona" id="checkboxzona18"/><span id="spanzona18" name="nomezona">Acquedotto <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('19','focus');" onmouseout="mapevent('19','nofocus');" onclick="mapevent('19','click');" onselectstart="return false" onmousedown="return false" id="divzona19" name="divzona"  class="divzona"><input type="checkbox" value="19" name="zona" id="checkboxzona19"/><span id="spanzona19" name="nomezona">EX MOF <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('20','focus');" onmouseout="mapevent('20','nofocus');" onclick="mapevent('20','click');" onselectstart="return false" onmousedown="return false" id="divzona20" name="divzona"  class="divzona"><input type="checkbox" value="20" name="zona" id="checkboxzona20"/><span id="spanzona20" name="nomezona">Piangipane/Ripagrande <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('21','focus');" onmouseout="mapevent('21','nofocus');" onclick="mapevent('21','click');" onselectstart="return false" onmousedown="return false" id="divzona21" name="divzona"  class="divzona"><input type="checkbox" value="21" name="zona" id="checkboxzona21"/><span id="spanzona21" name="nomezona">Piazza Travaglio <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('22','focus');" onmouseout="mapevent('22','nofocus');" onclick="mapevent('22','click');" onselectstart="return false" onmousedown="return false" id="divzona22" name="divzona"  class="divzona"><input type="checkbox" value="22" name="zona" id="checkboxzona22"/><span id="spanzona22" name="nomezona">Architettura <br /></span></div>
						<div style="width:100%;" onmouseover="$(this).css('cursor','pointer');mapevent('23','focus');" onmouseout="mapevent('23','nofocus');" onclick="mapevent('23','click');" onselectstart="return false" onmousedown="return false" id="divzona23" name="divzona"  class="divzona"><input type="checkbox" value="23" name="zona" id="checkboxzona23"/><span id="spanzona23" name="nomezona">Via Saraceno <br /></span></div>
			</div>
		</div>

         <div style="margin-top:20px">   
			<div class="nomecamporicerca">Stanze</div>
			<div class="campiricerca">
				<div>
					<input type="checkbox"  onchange="function_singola();"/>
					<span id="labelsingole" class="labelcamere">Singola</span>
					<div id="singole" style="display:none; position:absolute; margin-top:-20px; margin-left:90px">
						<button class="button numerocamerebutton" onclick="function_numsingole(-1);">-</button>
						<span id="numerosingole" class="numerocamere"><b>1</b></span>
                        <button class="button numerocamerebutton" onclick="function_numsingole(1);">+</button>
                    </div>
        		</div>
        		<div style="margin-top:10px;">
        			<input type="checkbox" onchange="function_doppia();"/>
           			<span id="labeldoppie" class="labelcamere" >Doppia</span>
            		<div id="doppie" style="display:none; position:absolute; margin-top:-20px; margin-left:90px">
            			<button class="button numerocamerebutton"  onclick="function_numdoppie(-1);">-</button>
                		<span id="numerodoppie" class="numerocamere"><b>1</b></span>
                		<button class="button numerocamerebutton" onclick="function_numdoppie(1);">+</button>
            		</div>
        		</div>
        	</div>
		</div>
            
        <div style="margin-top:10px; display:none" id="prezzosingola">
        	<div id="labelprezzosingole" class="nomecamporicerca" style="line-height:30px; height:30px;">Singola (&euro;)</div>
            <div class="campiricerca">da <input  class="input" type="text" value="0" style="width:46px" /> a <input class="input" type="text" value="0" style="width:46px" /></div>
        </div>
        <div style="margin-top:10px; display:none" id="prezzodoppia">
        	<div id="labelprezzodoppie" class="nomecamporicerca"  style="line-height:30px; height:30px;">Doppia (&euro;)</div>
        	<div class="campiricerca">da <input  class="input" type="text" value="0" style="width:46px" /> a <input  class="input" type="text" value="0" style="width:46px" /> </div>
        </div>
            
        <div style="margin-top:10px">
         	<div class="nomecamporicerca">Conquilini</div>
        	<div class="campiricerca">
                    	<input type="checkbox" value="misto" name="conquilini" checked="checked" onchange="conquilini_misto();" id="conquilini_misto" /> Misto <br />
                    	<input type="checkbox" value="maschi" name="conquilini" onchange="conquilini_solomaschi();" id="conquilini_solomaschi"/> Solo maschi <br />
                        <input type="checkbox" value="donne" name="conquilini" onchange="conquilini_solodonne();" id="conquilini_solodonne"/> Solo donne 
            	</div>
        </div>
        <div style="margin-top:10px;">
        	<div class="nomecamporicerca">Da</div>
            	<div class="campiricerca"  style="margin-left:115px;">
                    	<select name="giorno" class="input" style="width:42px; padding-left:0px; padding-right:0px;">
							
                                                        
                                                        
						</select>
                        /
                    	<select name="mese" class="input" onchange="sup=document.getElementsByName('anno')[0];creaGiorni(document.getElementsByName('giorno')[0],this.selectedIndex+1,sup.value);" style="width:42px; padding-left:0px; padding-right:0px;">
							
						</select>
                        /
                        <select name="anno" class="input" onchange="creaGiorni(document.getElementsByName('giorno')[0],document.getElementsByName('mese')[0].selectedIndex+1,document.getElementsByName('anno').value);" style="width:42px; padding-left:0px; padding-right:0px;">
                            <option value="2014" >14</option>
                            <option value="2015" onclick="creaGiorni(document.getElementsByName('giorno')[0],document.getElementsByName('mese')[0].selectedIndex+1,2015);">15</option>
                            <option value="2016" onclick="creaGiorni(document.getElementsByName('giorno')[0],document.getElementsByName('mese')[0].selectedIndex+1,2016);">16</option>
						</select>
				</div>
		</div>
        <div id="ricerca_avanzata" style="display:none; height:0px;">
        	<div style="width:100%; height:1px; background-color:#aaa; margin-top:10px;"></div>    
            <div style="margin-top:10px">
                <div class="nomecamporicerca">Piano</div>
                    <div class="campiricerca">
                        <select class="input" style="width:150px;background-color: white;">
                            <option></option>
                            <option>Pianoterra</option>
                            <option>Primo Piano</option>
                            <option>Secondo Piano</option>
                        </select>
                    </div>
            </div>			
            <div style="margin-top:10px">
                <div class="nomecamporicerca">Stanze</div>
                <div class="campiricerca">
                        <select class="input" style="width:150px;background-color: white;">
                            <option>Bagni</option>
                            <option>1 Bagno</option>
                            <option>2 Bagni</option>
                            <option>3 Bagni</option>
                            <option>4+ Bagni</option>
                        </select>
                        <select class="input" style="width:150px;background-color: white; margin-top:5px;">
                            <option>Soggiorno</option>
                            <option>1 Soggiorno</option>
                        </select>  
                        <select class="input" style="width:150px;background-color: white; margin-top:5px;">
                            <option>Ripostiglio</option>
                            <option>1 Ripostiglio</option>
                        </select> 
                        <select class="input" style="width:150px;background-color: white; margin-top:5px;">
                            <option>Giardino</option>
                            <option>1 Giardino</option>
                        </select>
                        <select class="input" style="width:150px;background-color: white; margin-top:5px;">
                            <option>Terrazza</option>
                            <option>1 Terrazza</option>
                        </select>
                </div>
            </div> 
            <div style="margin-top:10px">
                <div class="nomecamporicerca">Spese incl.</div>
                <div class="campiricerca">
                    <input type="checkbox" value="spesecondominiali" name="speseincluse"/> Spese<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;condominiali<br />
                    <input type="checkbox" value="riscaldamento" name="speseincluse"/> Riscaldamento<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;condominiale<br />
                    <input type="checkbox" value="acquafredda" name="speseincluse"/> Acqua fredda<br />  
                    <input type="checkbox" value="acquacalda" name="speseincluse"/> Acqua calda<br /> 
                    <input type="checkbox" value="pattume" name="speseincluse"/> Pattume<br />    
                    <input type="checkbox" value="internet" name="speseincluse"/> Internet<br />            
                </div>
            </div>  
            <div style="margin-top:10px">
                <div class="nomecamporicerca">Servizi</div>
                <div class="campiricerca">
                    <input  class="input" type="text" value="" style="width:140px" />
                </div>
            </div> 
		</div>
        <div id="labelricerca_avanzata" style="text-align:end; color:#039; margin-right:20px;" onmouseover="$(this).css('cursor','pointer');" onclick="mostravociavanzate();">Mostra voci avanzate</div>  
        <div style="font-weight: bold; margin-right:20px;text-align:end;">
        	<button class="button" style="  width:100px; margin-top:10px;">CERCA</button>
        </div>       
    </div>
    
  	<div class="publicitasidebar" style="margin-top:20px; margin-bottom:20px;">
    PUBBLICITA'
	</div>
  </div>
</div>

<%@ include file="elements/footer.jsp" %>

</body>
</html>
