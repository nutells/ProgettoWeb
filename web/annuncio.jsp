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
    geocoder.geocode( {'address': 'Via bolzoni 38 - Ferrara'}, function(results,status) {
        if (status == google.maps.GeocoderStatus.OK) {
            var options = {
                zoom: 13,
                center: results[0].geometry.location,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
        var map = new google.maps.Map(document.getElementById('map'), options);
        var marker = new google.maps.Marker({position: results[0].geometry.location, map: map});
        }
    });
}
var visiblecontattaproprietario=false;
function contattaproprietario(input){
    if(visiblecontattaproprietario==false){
        $('div#divcontattaproprietario').animate({height:"230px"},"slow");
        document.getElementById("divcontattaproprietario").style.display="block";
        input.value="Chiudi";
    }
    else{
	$('div#divcontattaproprietario').animate({height:"0px"},"medium",function(){
            document.getElementById("divcontattaproprietario").style.display="none";
        });
        input.value="Contatta il proprietario";
    }
    visiblecontattaproprietario=!visiblecontattaproprietario;
}


</script>

</head>
<body onload="mapinitialize();">

<%@ include file="elements/header.jsp" %>

<div class="container">
  <div class="content">
 	<div class="block"  style="margin-top: 30px; min-height: 650px;">
   		<div class="blocktitle backgroundcolor">
       		<div class="circleicons"><img src="image/annuncio.png" style="width: 48px; margin-top: -2px;margin-left: -2px;" /></div>
                <div style="margin-left: 60px;">Annuncio</div>
                </div>

            
            <div style="width:400px; float: left;">
                <div style=" width: 100%; height: 300px;">
                    <div style=" width: 100px; height: 300px; float: left; overflow-y: scroll; overflow-x: hidden">
                        <div style=" background-color: yellow; width: 70px; height: 70px; margin: 6px;">
                        </div>
                        <div style=" background-color: yellow; width: 70px; height: 70px; margin: 6px;">
                        </div>
                        <div style=" background-color: yellow; width: 70px; height: 70px; margin: 6px;">
                        </div>
                        <div style=" background-color: yellow; width: 70px; height: 70px; margin: 6px;">
                        </div>
                    </div>
                    <div style=" width: 298px; height: 298px;float: left; border: 1px solid #ccc">
                        <div style=" width: 278px; height: 278px; background-color: yellow; margin: 10px;"></div>
                    </div>                    
                </div>
                <div style=" width: 100%;">
                    <div id="map" style="border:0px;height:250px; width: 400px;"></div>
                </div>
                <div style="padding: 10px;">
                    informazioni supplementari
                </div>
            </div>    
            <div style="padding: 20px;margin-left: 400px;">
                descrizione e dettagli
            </div>
            
  	</div>
  </div>
  <div class="sidebar">
    <div style="margin-top: 30px">
    	<div class="blocktitlesidebar">
        	<div class="circleicons"><img src="image/proprietario.png" style="width: 48px; margin-top: -2px;margin-left: -1px;" /></div>
        	<div style="margin-left: 60px; color:white; ">Proprietario</div>
        </div>
        
        <div style=" margin-top: 10px; font-size: 16px;">
            Marco Aurelio
        </div>
         <div style=" float: right; margin-top: -20px; margin-right: 10px;">
            <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
            <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
            <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
            <div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
            <div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
        </div>
            <div style=" text-align: center; margin-top: 10px; margin-bottom: 10px;">
                <input type="button" class=" button" value="Contatta il proprietario" onclick="contattaproprietario(this)"/>
            </div>
            <div id="divcontattaproprietario" style=" height: 0px; display: none; padding-top: 10px; padding-bottom: 10px; width: 250px;background-color: white; margin-left: 18px;border:0px;border-radius:5px;box-shadow: 0 1px 2px 0 #000;">
                <div style="margin-bottom: 10px; margin-left: 5px;">
                    Chiama <span style=" font-weight: bold;">3291234567</span>
                </div>
                <div style="border-bottom: 1px solid #ccc;"></div>
                <div style="margin-bottom: 10px; margin-left: 5px; font-weight: bold; margin-top: 10px;">
                Scrivi al proprietario
                </div>
                <input class="input campiloginregister" value="Il tuo nome" id="titlerecensione" type="text"/><br/>
                <input class="input campiloginregister" value="La tua mail" id="titlerecensione" type="text"/><br/>
                <textarea class="input campiloginregister" style="height: 55px;">Messaggio</textarea>
                <div style=" text-align: center;">
                    <input type="button" class=" button" value="Invia messaggio"/>
                </div>
            </div>
    </div>
    <div style="margin-top: 30px">
    	<div class="blocktitlesidebar">
        	<div class="circleicons"><img src="image/proprietario.png" style="width: 48px; margin-top: -2px;margin-left: -1px;" /></div>
        	<div style="margin-left: 60px; color:white; ">Recensioni</div>
        </div>
        
        <div style=" margin-top: 10px;">
            <div style=" margin-left: 75px; height: 40px;">
               <div style="background-image:url(image/stary.png); width:30px; height:30px; background-size:contain; float:left;"></div>
               <div style="background-image:url(image/stary.png); width:30px; height:30px; background-size:contain; float:left; "></div>
               <div style="background-image:url(image/stary.png); width:30px; height:30px; background-size:contain; float:left; "></div>
               <div style="background-image:url(image/starg.png); width:30px; height:30px; background-size:contain; float:left; "></div>
               <div style="background-image:url(image/starg.png); width:30px; height:30px; background-size:contain; float:left;"></div>                            
            </div>
            <div style=" text-align: center;">
                <a href="#scrivirecensione" style="text-decoration: none;"><input type="button" class=" button" value="Inserisci la tua recensione" onclick="document.getElementById("titlerecensione").focus;"/></a>
            </div>
            <div style=" width: 100%;margin-top: 10px; height: 30px;border-top: 1px solid #ccc;">
                <div style="float:left; margin-left: 50px; width: 55px; line-height: 30px;">Ordina</div>
                <div style="width:90px; height:30px; float:left">
                    <select class="input" style="width:90px;background-color: white; padding:0px;font-size:12px; margin-top:6px;">
                        <option>Gradimento</option>
                        <option>Data</option>
                        <option>Stelle</option>
                    </select>
                </div>
                <div style="width:30px; height:25px; float:left; background-image:url(image/order.png); background-size:contain; margin-left: 8px;" onmouseover="$(this).css('cursor','pointer');"></div>
            </div>
            <div style=" width: 100%;margin-top: 10px; height: 85px; border-bottom: 1px solid #ccc">
                <div style=" font-weight:bold">
                    TITOLO
                </div>
                <div style=" float: right; margin-top: -20px;">
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                </div>
                <div style="">
                    aaa aaa aaa aaa aa a aa a aa a a a aa a a aa aa a aa a aa a aaa aaa aaa
                </div>
                
                <div style=" margin-top: 2px; height: 30px;">
                        <div style="background-image:url(image/positivo_recensione.png);width:25px; height:25px; background-size:contain; float:left; margin-right: 5px;"></div>
                        <div style="width:15px; height:15px; float:left; line-height: 25px; margin-right: 10px;">0</div>
                        <div style="background-image:url(image/negativo_recensione.png);width:25px; height:25px; background-size:contain; float:left; margin-right: 5px;"></div>
                        <div style="width:15px; height:15px; float:left; line-height: 25px; float:left;">0</div>
                </div>
            </div>
            <div style=" width: 100%;margin-top: 10px; height: 85px; border-bottom: 1px solid #ccc">
                <div style=" font-weight:bold">
                    TITOLO
                </div>
                <div style=" float: right; margin-top: -20px;">
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                </div>
                <div style=" width: 240px;">
                    aaa aaa aaa aaa aa a aa a aa a a a aa a a aa aa a aa a aa a aaa aaa aaa
                </div>
                <div style=" float: right; margin-top: -35px;">
                    <div style=" height: 30px;">
                        <div style="width:15px; height:15px; float:left; line-height: 25px">0</div>
                        <div style="background-image:url(image/positivo_recensione.png);width:25px; height:25px; background-size:contain; float:left;"></div>
                    </div>
                    <div>
                        <div style="width:15px; height:15px; float:left; line-height: 25px">0</div>
                        <div style="background-image:url(image/negativo_recensione.png);width:25px; height:25px; background-size:contain; float:left;"></div>
                    </div>
                </div>
            </div>
            <div style=" width: 100%;margin-top: 10px; height: 85px; border-bottom: 1px solid #ccc">
                <div style=" font-weight:bold">
                    TITOLO
                </div>
                <div style=" float: right; margin-top: -20px;">
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                </div>
                <div style=" width: 240px;">
                    aaa aaa aaa aaa aa a aa a aa a a a aa a a aa aa a aa a aa a aaa aaa aaa
                </div>
                <div style=" float: right; margin-top: -35px;">
                    <div style=" height: 30px;">
                        <div style="width:15px; height:15px; float:left; line-height: 25px">0</div>
                        <div style="background-image:url(image/positivo_recensione.png);width:25px; height:25px; background-size:contain; float:left;"></div>
                    </div>
                    <div>
                        <div style="width:15px; height:15px; float:left; line-height: 25px">0</div>
                        <div style="background-image:url(image/negativo_recensione.png);width:25px; height:25px; background-size:contain; float:left;"></div>
                    </div>
                </div>
            </div>
            <div style=" width: 100%;margin-top: 10px; height: 85px; border-bottom: 1px solid #ccc">
                <div style=" font-weight:bold">
                    TITOLO
                </div>
                <div style=" float: right; margin-top: -20px;">
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                </div>
                <div style=" width: 240px;">
                    aaa aaa aaa aaa aa a aa a aa a a a aa a a aa aa a aa a aa a aaa aaa aaa
                </div>
                <div style=" float: right; margin-top: -35px;">
                    <div style=" height: 30px;">
                        <div style="width:15px; height:15px; float:left; line-height: 25px">0</div>
                        <div style="background-image:url(image/positivo_recensione.png);width:25px; height:25px; background-size:contain; float:left;"></div>
                    </div>
                    <div>
                        <div style="width:15px; height:15px; float:left; line-height: 25px">0</div>
                        <div style="background-image:url(image/negativo_recensione.png);width:25px; height:25px; background-size:contain; float:left;"></div>
                    </div>
                </div>
            </div>
            <div style=" width: 100%;margin-top: 10px; height: 85px; border-bottom: 1px solid #ccc">
                <div style=" font-weight:bold">
                    TITOLO
                </div>
                <div style=" float: right; margin-top: -20px;">
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left;"></div>
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/stary.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left; "></div>
                    <div style="background-image:url(image/starg.png); width:15px; height:15px; background-size:contain; float:left;"></div>                            
                </div>
                <div style=" width: 240px;">
                    aaa aaa aaa aaa aa a aa a aa a a a aa a a aa aa a aa a aa a aaa aaa aaa
                </div>
                <div style=" float: right; margin-top: -35px;">
                    <div style=" height: 30px;">
                        <div style="width:15px; height:15px; float:left; line-height: 25px">0</div>
                        <div style="background-image:url(image/positivo_recensione.png);width:25px; height:25px; background-size:contain; float:left;"></div>
                    </div>
                    <div>
                        <div style="width:15px; height:15px; float:left; line-height: 25px">0</div>
                        <div style="background-image:url(image/negativo_recensione.png);width:25px; height:25px; background-size:contain; float:left;"></div>
                    </div>
                </div>
            </div>
            <div style=" width: 100%;margin-top: 10px;" id="scrivirecensione">
                <div style=" font-weight:bold; margin-bottom: 10px;">
                    Scrivi la tua recensione
                </div>
                <div style=" margin-left: 75px; height: 40px;">
                   <div style="background-image:url(image/starg.png); width:30px; height:30px; background-size:contain; float:left;"></div>
                   <div style="background-image:url(image/starg.png); width:30px; height:30px; background-size:contain; float:left; "></div>
                   <div style="background-image:url(image/starg.png); width:30px; height:30px; background-size:contain; float:left; "></div>
                   <div style="background-image:url(image/starg.png); width:30px; height:30px; background-size:contain; float:left; "></div>
                   <div style="background-image:url(image/starg.png); width:30px; height:30px; background-size:contain; float:left;"></div>                            
                </div>
                <div style=" width: 240px; margin-left: 30px;">
                    <input class="input campiloginregister" value="Titolo" id="titlerecensione" type="text"/><br/>
                    <textarea class="input campiloginregister">Descrizione</textarea>
                    <div style=" text-align: center;">
                        <input type="button" class=" button" value="Invia la tua recensione"/>
                    </div>
                </div>
            </div>
            
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
