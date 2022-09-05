<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset='utf-8'>
<title>Studdit</title>
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');

*{
	font-family: 'Jua', sans-serif;
}


body {
	background:#FD9F28;
}

form {
	width: 15%;
	margin: 180px auto;
	background: #efefef;
	padding: 60px 120px 80px 120px;
	text-align: center;
	-webkit-box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
	box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
	border-radius: 40px 40px 40px 40px;
}

label {
	display: block;
	position: relative;
	margin: 40px 0px;
}

.label-txt {
	position: absolute;
	top: -1.6em;
	padding: 10px;
	font-family: sans-serif;
	font-size: .8em;
	letter-spacing: 1px;
	color: rgb(120, 120, 120);
	transition: ease .3s;
}

.input {
	width: 100%;
	padding: 10px;
	background: transparent;
	border: none;
	outline: none;
}

.line-box {
	position: relative;
	width: 100%;
	height: 2px;
	background: #BCBCBC;
}

.line {
	position: absolute;
	width: 0%;
	height: 2px;
	top: 0px;
	left: 50%;
	transform: translateX(-50%);
	background: #0000FF;
	transition: ease .6s;
}

.input:focus+.line-box .line {
	width: 100%;
}

.label-active {
	top: -3em;
}

button {
	display: inline-block;
	padding: 12px 24px;
	background: rgb(220, 220, 220);
	font-weight: bold;
	color: rgb(120, 120, 120);
	border: none;
	outline: none;
	border-radius: 3px;
	cursor: pointer;
	transition: ease .3s;
	border-radius: 40px 40px 40px 40px;
}

button:hover {
	background: #F6A835;
	color: #ffffff;
	animation: jello-horizontal 0.9s both;
}


.tracking-in-expand-fwd {
	-webkit-animation: tracking-in-expand-fwd 0.8s cubic-bezier(0.215, 0.610, 0.355, 1.000) both;
	        animation: tracking-in-expand-fwd 0.8s cubic-bezier(0.215, 0.610, 0.355, 1.000) both;
}

.color-change-2x {
	animation: color-change-2x 4s linear infinite alternate both;
}

/* ----------------------------------------------
 * Generated by Animista on 2022-8-23 12:22:33
 * Licensed under FreeBSD License.
 * See http://animista.net/license for more info. 
 * w: http://animista.net, t: @cssanimista
 * ---------------------------------------------- */

/**
 * ----------------------------------------
 * animation tracking-in-expand-fwd
 * ----------------------------------------
 */
@-webkit-keyframes tracking-in-expand-fwd {
  0% {
    letter-spacing: -0.5em;
    -webkit-transform: translateZ(-700px);
            transform: translateZ(-700px);
    opacity: 0;
  }
  40% {
    opacity: 0.6;
  }
  100% {
    -webkit-transform: translateZ(0);
            transform: translateZ(0);
    opacity: 1;
  }
}
@keyframes tracking-in-expand-fwd {
  0% {
    letter-spacing: -0.5em;
    -webkit-transform: translateZ(-700px);
            transform: translateZ(-700px);
    opacity: 0;
  }
  40% {
    opacity: 0.6;
  }
  100% {
    -webkit-transform: translateZ(0);
            transform: translateZ(0);
    opacity: 1;
  }
}


/* ----------------------------------------------
 * Generated by Animista on 2022-8-23 12:28:28
 * Licensed under FreeBSD License.
 * See http://animista.net/license for more info. 
 * w: http://animista.net, t: @cssanimista
 * ---------------------------------------------- */

/**
 * ----------------------------------------
 * animation color-change-2x
 * ----------------------------------------
 */
@keyframes color-change-2x {
  0% {
    background: #FCEDCE;
  }
  100% {
    background: ##F8DDA7;
  }
}

/* ----------------------------------------------
 * Generated by Animista on 2022-8-23 13:8:3
 * Licensed under FreeBSD License.
 * See http://animista.net/license for more info. 
 * w: http://animista.net, t: @cssanimista
 * ---------------------------------------------- */

/**
 * ----------------------------------------
 * animation jello-horizontal
 * ----------------------------------------
 */
@keyframes jello-horizontal {
  0% {
    transform: scale3d(1, 1, 1);
  }
  30% {
    transform: scale3d(1.25, 0.75, 1);
  }
  40% {
    transform: scale3d(0.75, 1.25, 1);
  }
  50% {
    transform: scale3d(1.15, 0.85, 1);
  }
  65% {
    transform: scale3d(0.95, 1.05, 1);
  }
  75% {
    transform: scale3d(1.05, 0.95, 1);
  }
  100% {
    transform: scale3d(1, 1, 1);
  }
}

</style>
</head>
<body class="color-change-2x">
<form action="/studditproject/login.do" method="post">
<div class="title-wrapper">
<h1 class="tracking-in-expand-fwd">STUDDIT</h1>
<h3 class="tracking-in-expand-fwd">Do your study!</h3>
</div>
	<label>
		<p class="label-txt">ENTER YOUR ID</p><br> <input type="text"
		class="input" name="id">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label>
	<label>
		<p class="label-txt">ENTER YOUR PASSWORD</p><br> <input type="password"
		class="input" name="password" onkeyup="enterkey()">
		<div class="line-box">
			<div class="line"></div>
		</div>
	</label>
	<button type="button" id="btn-login">Login</button><br><br>
	<button type="button" onClick="location.href='find.jsp'">Find Your Id / Password</button>
</form>

<script>
$(function() {
	$('.input').focus(function() {
		$(this).parent().find(".label-txt").addClass('label-active');
	});

	$(".input").focusout(function() {
		if ($(this).val() == '') {
			$(this).parent().find(".label-txt").removeClass('label-active');
		}
	});
	
	$("#btn-login").on("click",function(){
		$.ajax({
			url : "/studditproject/login.do",
			type : "post",
			data : {"id" : $("input[name='id']").val(), "password" : $("input[name='password']").val()},
			success : function(res) {
				console.log(res);
					if (res == null) {
						alert("Wrong Id or Password");
					} else {
						location.href = "<%=request.getContextPath()%>/testMyProfile.do?id="+res.std_id;
					}
				},
			error : function(xhr) {
					alert("오류코드 = " + xhr.status);
				},
			dataType : "json"
		});
	});
});

function login(){
	$.ajax({
		url : "/studditproject/login.do",
		type : "post",
		data : {"id" : $("input[name='id']").val(), "password" : $("input[name='password']").val()},
		success : function(res) {
				console.log(res);
				if (res == null) {
					alert("Wrong Id or Password");
				} else {
					location.href = "<%=request.getContextPath()%>/testMyProfile.do?id="+res.std_id;
				}
			},
		error : function(xhr) {
				alert("오류코드 = " + xhr.status);
			},
		dataType : "json"
	});
}

function enterkey(){
	if(window.event.keyCode == 13){
		login();
	}
}
</script>
</body>
</html>