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
</script>

</head>
<body>

<%@ include file="elements/header.jsp" %>

<div class="container">
  <div class="content">
 	<div class="block"  style="margin-top: 30px; min-height: 650px;">
   		<div class="blocktitle backgroundcolor">
       		<div class="circleicons"><img src="image/annuncio.png" style="width: 48px; margin-top: -2px;margin-left: -2px;" /></div>
                <div style="margin-left: 60px;">Annunci inseriti</div>
                </div>

  	</div>
 	<div class="block"  style="margin-top: 30px; min-height: 650px;">
   		<div class="blocktitle backgroundcolor">
       		<div class="circleicons"><img src="image/annuncio.png" style="width: 48px; margin-top: -2px;margin-left: -2px;" /></div>
                <div style="margin-left: 60px;">Annunci che osservi</div>
                </div>

  	</div>
      
  </div>
  <div class="sidebar">
    <div style="margin-top: 30px">
    	<div class="blocktitlesidebar">
        	<div class="circleicons"><img src="image/proprietario.png" style="width: 48px; margin-top: -2px;margin-left: -1px;" /></div>
        	<div style="margin-left: 60px; color:white; ">Profilo</div>
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
    </div>          
    <div class="publicitasidebar" style="margin-top:20px; margin-bottom:20px;">
    PUBBLICITA'
    </div>
  </div>
</div>

<%@ include file="elements/footer.jsp" %>

</body>
</html>
