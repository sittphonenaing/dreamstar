$(document).ready(function($) {

	var cc = 1 + Math.floor(Math.random() * 12);

	$(".color-switch ul li a.change").click(function(){
		$(".color-switch ul li a").removeClass("active");
		$(this).addClass("active");
		return false;
	});
	
	$("#brown").click(function(){
		$("#color" ).attr("href", "assets/css/theme-brown.css?" + cc);
		$(".logo img" ).attr("src", "assets/img/brown/logo@3x.png");
		setCookie('color', 'brown', 365);
		return false;
	});
	
	$("#red").click(function(){
		$("#color" ).attr("href", "assets/css/theme-red.css?" + cc);
		$(".logo img" ).attr("src", "assets/img/red/logo@3x.png");
		setCookie('color', 'red', 365);
		return false;
	});
	
	$("#yellow").click(function(){
		$("#color" ).attr("href", "assets/css/theme-yellow.css?" + cc);
		$(".logo img" ).attr("src", "assets/img/yellow/logo@3x.png");
		setCookie('color', 'yellow', 365);
		return false;
	});
	
	$("#blue").click(function(){
		$("#color" ).attr("href", "assets/css/theme-blue.css?" + cc);
		$(".logo img" ).attr("src", "assets/img/blue/logo@3x.png");
		setCookie('color', 'blue', 365);
		return false;
	});
	
	$("#green").click(function(){
		$("#color" ).attr("href", "#green");
		$(".logo img" ).attr("src", "assets/img/green/logo@3x.png");
		setCookie('color', 'green', 365);
		return false;
	});
	
	$("#gray").click(function(){
		$("#color" ).attr("href", "assets/css/theme-gray.css?" + cc);
		$(".logo img" ).attr("src", "assets/img/gray/logo@3x.png");
		setCookie('color', 'gray', 365);
		return false;
	});
	
	$("#modernstyle").click(function(){
		$("#color" ).attr("href", "assets/css/theme-modernstyle.css?" + cc);
		$(".logo img" ).attr("src", "assets/img/modernstyle/logo@3x.png");
		setCookie('color', 'modernstyle', 365);
		return false;
	});
	
	$(".color-switch > i").click(function(){
	  	$(".color-switch ul").slideToggle();
	});
	
});

function setCookie(cname, cvalue, exdays) {
		var d = new Date();
		d.setTime(d.getTime() + (exdays*24*60*60*1000));
		var expires = "expires="+d.toUTCString();
		document.cookie = cname + "=" + cvalue + "; " + expires;
	}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
    }
    return "";
}

$(function() {
	var cc = 1 + Math.floor(Math.random() * 121);
	var color=getCookie("color");
	if ((color != "") && (color != "green")) {
		document.getElementById(color).className += " active";
			$("#color").attr("href", "assets/css/theme-"+color+".css?" + cc);
			$(".logo img" ).attr("src", "assets/img/"+color+"/logo@3x.png");
	} else {
		document.getElementById('green').className += " active";
			$("#color").attr("href", "#green");
			$(".logo img" ).attr("src", "assets/img/green/logo@3x.png");
	}
});
