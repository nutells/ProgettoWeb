var ordercrescente=true;

function chargeorder(element){
	if(ordercrescente==true){
		element.style.backgroundImage="url(image/order2.png)";
		ordercrescente=false;
	}else{
		element.style.backgroundImage="url(image/order.png)";
		ordercrescente=true;
	}
}