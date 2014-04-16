<div class="titlebar">
	<div class="titlebarlimited">
		<div class="logopage">
        	<img src="image/logopage.png" style="width: 58px; margin-top: 20px; margin-left: 20px; float: left;" />
            <span>&nbsp;&nbsp; Dromedario</span>
        </div> 
		<div class="selectmenu">
			<select id="titlebuttons" name="button">
				<option value="button1" selected="selected">BUTTON1</option>
				<option value="button2">BUTTON2</option>
				<option style="background-color:#39801a;" value="button3">LOGIN</option>
			</select>
		</div>
		<ul class="menu">
			<a onmouseover="$(this).css('cursor','pointer')" onselectstart="return false" onmousedown="return false" style="color:white; text-decoration:none;"><li id="titlebutton" style="border-right:1px solid #053048;">BUTTON1</li></a>
			<a onmouseover="$(this).css('cursor','pointer')" onselectstart="return false" onmousedown="return false" style="color:white; text-decoration:none;"><li id="titlebutton" >BUTTON2</li></a>
			<a onmouseover="$(this).css('cursor','pointer')" onselectstart="return false" onmousedown="return false" style="color:white; text-decoration:none;"><li id="loginbutton" onclick="mostraLogin();" style="margin-right: 0px;">LOGIN<br/><p style="font-size: 10px; margin-top: -10px;">O REGISTRATI</p></li></a>
		</ul>
        
            <div id="comparsa" class="login block"  >
            <div id="trianglelogin"></div>
<div id="log" >
          <form action="index.html" id="formlogin">
                    	<div style=" padding-top:5px;" ></div>
                    	<div id="emailloginerror" class="erroreloginregister"></div>
						<input class="input campiloginregister" id="emaillogin" name="emaillogin" type="text" placeholder="Email" onkeydown="controllatasto(this,event);" onblur="controllatasto(this,1);"/>
                        <br />
                        <div id="passwordloginerror" class="erroreloginregister"></div>
						<input class="input campiloginregister" id="passwordlogin" name="passwordlogin" type="text" placeholder="Password" onkeydown="controllatasto(this,event);" onblur="controllatasto(this,1);"/>
                        <div style="width:235px; text-align:center;margin:5px; margin-top:0px;" >
                        	<input  class="button" type="button" value="Accedi" onclick="login(this.form);"/>&nbsp;&nbsp; <input type="button" class="button" value="Registrati" onclick="mostraRegistrazione(this.form);"/>
                        </div>  
        </form>
              </div>
                <div id="register" style="display:none;">
                    <form action="index.html" id="formregister">
                  	
                    	<div style="font-size: 15px;font-weight: bold;letter-spacing: 1px; padding:10px; color:#666; float:left">Registrati subito!</div>
                        <div id="nomeregistererror" class="erroreloginregister" style="margin-top:42px;"></div>
						<input class="input campiloginregister" id="nomeregister" name="nomeregister" type="text" placeholder="Nome" onkeydown="controllatastoregister(this,event);" onblur="controllatastoregister(this,1);"/>
                        <br />
                        <div id="cognomeregistererror" class="erroreloginregister"></div>
						<input class="input campiloginregister" id="cognomeregister" name="cognomeregister" type="text" placeholder="Cognome" onkeydown="controllatastoregister(this,event);" onblur="controllatastoregister(this,1);"/>
                        <br />
                        <div id="telefonoregistererror" class="erroreloginregister"></div>
						<input class="input campiloginregister" id="telefonoregister" name="telefonoregister" type="text" placeholder="Numero di telefono (facoltativo)" onkeydown="controllatastoregister(this,event);" onblur="controllatastoregister(this,1);"/>                           
                        <br />
                         <div id="emailregistererror" class="erroreloginregister"></div>
						<input class="input campiloginregister" id="emailregister" name="emailregister" type="text" placeholder="Email" onkeydown="controllatastoregister(this,event);" onblur="controllatastoregister(this,1);"/>   
                        <br />                       
                         <div id="passwordregistererror" class="erroreloginregister"></div>
						<input class="input campiloginregister" id="passwordregister" name="passwordregister" type="text" placeholder="Password" onkeydown="controllatastoregister(this,event);" onblur="controllatastoregister(this,1);"/>
                        <br />                       
                         <div id="cittadistudioregistererror" class="erroreloginregister"></div>
						<input class="input campiloginregister" id="cittadistudioregister" name="cittadistudioregister" type="text" placeholder="Citta' di studio (facoltativo)" onkeydown="controllatastoregister(this,event);" onblur="controllatastoregister(this,1);"/>
                        <div style="padding-left:5px;">
                        	<input type="radio" value="uomo" checked="checked" name="sesso" /> Uomo 
                            &nbsp;&nbsp;&nbsp;
                        	<input type="radio" value="donna" name="sesso" /> Donna
                        </div>
                      <div style="padding:5px; padding-bottom:10px;">
                       	<div id="regolamentoregistererror" class="erroreloginregister" style="margin-top:-2px; margin-left:211px;"></div>
                       	  <input type="checkbox" value="checkregolamento" name="regolamentoregister" id="regolamentoregister" onclick="chargeCampoRegister(this);" />&nbsp;&nbsp; Ho letto il <a href="regolamento">regolamento</a>
                        </div>
                         <div style="width:235px; text-align:center;margin:5px; margin-top:0px;" >
                         <input type="button" value="&lt; LOGIN" id="returnlogin" onclick="returnLogin(this.form);"/>
                         <input  class="button" type="button" value="Registrati" onclick="register(this.form);"/>
                         
                         </div>  
                    </form>
                </div>
      </div>
        
        
  	</div>
</div>
