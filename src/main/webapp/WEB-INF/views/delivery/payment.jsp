<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style>
@font-face {
	font-family: 'NanumSquareNeo-Variable';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

* {
	box-sizing: border-box;
	font-family: 'NanumSquareNeo-Variable';
}

/* div {
	border: 1px solid black;
} */

.container {
	margin: auto;
	overflow: hidden;
	width: 978px;
}

button:hover {
	cursor: pointer;
}

/* header */
.header {
	height: 150px;
	overflow: hidden;
}

/* logo */
.logo {
	float: left;
	position: relative;
	height: 100%;
	width: 55%;
}

#logoImg {
	height: 50%;
	position: absolute;
	bottom: 0px;
	left: 0px;
}

#logoImg:hover {
	cursor: pointer;
}

/* search */
.search {
	float: left;
	position: relative;
	height: 100%;
	width: 25%;
}

.searchBox {
	position: absolute;
	bottom: 5px;
	left: 0px;
	overflow: hidden;
	height: 40px;
	width: 100%;
	border: none;
	border-radius: 5px;
	box-shadow: 3px 3px 3px 3px #80808050;
}

.searchTxt {
	float: left;
	padding: 0;
	background: none;
	border: none;
	outline: none;
	font-size: 15px;
	line-height: 40px;
	position: absolute;
	left: 10px;
}

.searchBtn {
	position: absolute;
	right: 0px;
	line-height: 100px;
	border: none;
	background-color: #ffffff;
	color: #5397fc50;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	display: flex;
	align-items: center;
	justify-content: center;
}

/* member */
.member {
	float: left;
	position: relative;
	width: 20%;
	height: 100%;
}

/* icon */
.iconBox {
	position: absolute;
	bottom: 0px;
	right: 0px;
}

span.size-40 {
	font-size: 40px;
	color: black;
	font-variation-settings: 'FILL' 0, 'wght' 200, 'GRAD' 200, 'opsz' 40
}

span.size-40 {
	cursor: pointer;
}

/* login */
.signBox {
	display: flex;
	justify-content: flex-end;
}

.signBox>a {
	margin: 5px;
	text-decoration: none;
	text-underline-offset: 5px;
	color: black;
}

.signBox>a:hover {
	color: #5397fc;
	text-decoration-color: #5397fc;
}

#login {
	width: 100px;
	text-align: right;
}

#nick {
	text-decoration: none;
	width: 100px;
}

#nick:hover {
	color: black;
	cursor: default;
}

/* headerHr */
#headerHr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 1px solid rgb(216, 216, 216);
	margin-top: 15px;
	margin-bottom: 15px;
}
/* header */

/* navi */
.navi {
	width: 100%;
	height: 50px;
}

/* body */
.body {
	width: 580px;
	overflow: hidden;
	margin: auto;
}

.body-top {
	height: 100px;
	font-weight: bold;
	font-size: 17px;
}

.main {
	height: 100%;
	width: 100%;
}

.sub-div {
	height: 200px;
	width: 98%;
	text-align: center;
	font-weight: bold;
	font-size: 18px;
	line-height: 200px;
	border-radius: 5px;
	background-color: #f1f6fa;
	box-shadow: 3px 3px #80808050;
	text-shadow: 1px 1px #80808050;
}

.pay-btn-div {
	padding-top: 10px;
}

.pay-btn {
	width: 100%;
	height: 45px;
	width: 98%;
	color: #ffffff;
	border: none;
	border-radius: 4px;
	background-color: #5397fc;
	box-shadow: 3px 3px #80808050;
	font-size: 15px;
	transition-duration: 0.1s;
}

.pay-btn:hover {
	margin-left: 5px;
	margin-top: 5px;
	box-shadow: none;
}

.body-bottom {
	padding-top: 60px;
}

.li-title {
	font-weight: bold;
}

ul {
	padding-inline-start: 1.2em;
}

li {
	padding-bottom: 7px;
}
/* body */

/* footer */
.footer {
	margin: 5px;
	margin-top: 70px;
}

.f_header {
	display: inline-flex;
	margin-top: 10px;
}

.f_header>a>img {
	width: 200px;
}

.sns_icon {
	position: relative;
	top: 1px;
	left: 595px;
}

.sns_icon>a>img {
	height: 50px;
	width: 200px;
}

.business_info {
	margin-top: 30px;
}

#business_info_title {
	font-size: x-small;
	color: #808080d6;
}

.business_info>span {
	margin-top: 5px;
}

.f_intro {
	margin-top: 15px;
	margin-bottom: 20px;
	font-size: small;
}

.f_intro>span {
	color: #4d4b4bc1;
}

.f_line {
	color: #808080d6;
}

.business_info {
	margin-top: 20px;
}

#business_info_text {
	margin-top: 10px;
	font-size: x-small;
	color: #808080d6;
}

.inline_info {
	display: inline-flex;
}

#arrow_down2, #arrow_up2 {
	position: relative;
	bottom: 6px;
	color: #808080d6;
}

#arrow_up2 {
	display: none;
}

.sns_icon>a>img {
	width: 40px;
	height: 40px;
}

.copyright {
	margin-top: 5px;
	font-size: x-small;
}
</style>
</head>

<body>
	<div class="container">
		<div class="header">
			<div class="logo">
				<img src="/resources/bookday_logotitle.png" id="logoImg">
			</div>
			<div class="search">
				<div class="searchBox">
					<form action="/search/toSearch" id="search" method="post">
						<input class="searchTxt" type="text" placeholder="???????????? ????????? ?????????"
							id="searchWord" name="searchWord">
						<button class="searchBtn" type="submit">
							<span class="material-symbols-outlined"> search </span>
						</button>
					</form>
				</div>
			</div>
			<div class="member">
				<div class="signBox">
					<c:choose>
						<c:when test="${empty loginID}">
							<a href="/member/toLogin"><p class="user" id="login">?????????</p></a>
							<a href="/member/toSignup"><p class="user" id="signup">????????????</p></a>
						</c:when>
						<c:otherwise>
							<a id="nick"><p class="user" id="user">${nickname}???</p></a>
							<a href="/member/logout"><p class="user" id="logout">????????????</p></a>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="iconBox">
					<span class="material-symbols-outlined size-40" id="notifications">notifications</span>
					<span class="material-symbols-outlined size-40" id="bookbag">shopping_bag</span>
					<span class="material-symbols-outlined size-40" id="bookshelves">shelves</span>
					<span class="material-symbols-outlined size-40" id="mypage">person</span>
				</div>
			</div>
		</div>
		<hr id="headerHr">
		<div class="navi"></div>
		<div class="body">
			<div class="body-top">
				<div style="padding-bottom: 10px">????????? ????????????</div>
				<div>??? ?????? ??? ???, ????????? ???????????? ????????? ?????????????????????.</div>
			</div>
			<div class="body-main">
				<div class="main">
					<div class="sub-div">????????? ?????? 12,000???</div>
					<div class="pay-btn-div">
						<c:choose>
							<c:when test="${dto.grade eq '?????????'}">
								<button class="pay-btn" id="pay-btn">????????????</button>
							</c:when>
							<c:otherwise>
								<button class="pay-btn" id="disabled-pay-btn">?????? ???</button>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<div class="body-bottom">
				<div class="li-title">????????????</div>
				<ul>
					<li>??????????????? ????????? ????????? 30????????????.</li>
					<li>???????????? ?????? 10??? ?????? ?????? ????????????, 3??? ????????? ?????? ????????? ??? ??? ????????????.</li>
					<li>???????????? 10?????????, ????????? ????????? ???????????????.</li>
					<li>???????????? ???????????? ??? ?????? ????????? ???????????????. ???????????? ??? ???????????????!</li>
					<li>???????????? ?????? ?????? ??????????????? ?????? ????????? ????????? ??????????????? ?????????.</li>
				</ul>
			</div>
		</div>
		<div class="footer">
			<hr style="border-top: 1px solid rgb(216, 216, 216);">
			<div class="f_header">
				<a href="/"><img src="/resources/bookday_logotitle.png"></a>

				<div class="sns_icon">
					<a href="#"><img src="/resources/instagram.png" id="insta"></a>
					<a href="#"><img src="/resources/facebook.png" id="facebook"></a>
					<a href="#"><img src="/resources/twitter_black.png" id="twiter"></a>
					<a href="#"><img src="/resources/youtube.png" id="youtube"></a>
				</div>

			</div>
			<div class="business_info">
				<div class="inline_info">
					<div id="business_info_title">????????? ??????</div>
					<span class="arrow_icon material-symbols-outlined" id="arrow_down2">keyboard_arrow_down</span>
					<span class="arrow_icon material-symbols-outlined" id="arrow_up2">keyboard_arrow_up</span>
				</div>

				<div id="business_info_text">
					<span>????????? ????????? </span><span>|</span><span> ????????? ????????????
						01-20-22015</span>
					<p>?????? ??????????????? ?????? ???????????? 120 ???????????? ??????(??? ????????????) 3F</p>
					<span>???????????? 1544-9970 </span><span>|</span><span> ?????????
						help@bookday.com</span>
				</div>
			</div>

			<div class="f_intro">
				<span>????????????</span> <span class="f_line">|</span> <span>????????????</span> <span
					class="f_line">|</span> <span>????????????????????????</span> <span class="f_line">|</span>
				<span>?????????????????????</span> <span class="f_line">|</span> <span>??????
					??????</span>
			</div>
			<p class="copyright">Copyright ?? 2022 ????????? All Rights Reserved.</p>
		</div>
	</div>
	<script>
		$("#pay-btn").on("click", function() {
			var IMP = window.IMP;
			IMP.init('imp78130413');
			IMP.request_pay({
				pg : "kakaopay",
				pay_method : 'kakaopay',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '????????? [????????? ?????????]',
				amount : 12000
				//buyer_name : '????????? ??????',
				//buyer_email : '????????? ?????????',
				//buyer_tel : '????????? ????????????'
			}, function(rsp) {
				if (rsp.success) {
					var msg = '????????? ?????????????????????.';
					window.open("/delivery/toPaymentCompleted", "_blank", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=250, left=500, top=250");
				} else {
					var msg = '????????? ?????????????????????.';
					rsp.error_msg;
				}
			}); 
		})

		$("#disabled-pay-btn").on("click", function() {
			alert("?????? ?????? ?????? ??????????????????.");
		})
		
		$("#logoImg").on("click", function() {
			location.href = "/";
		})
		$("#searchWord").on("keydown", function(e) {
			if (e.keyCode == 13) {
				$("#search").submit();
			}
		})
		$("#notifications").on("click", function() {
			  let today = new Date();   

	    	  let hours = ('0' + today.getHours()).slice(-2); 
	    	  let minutes = ('0' + today.getMinutes()).slice(-2);
	    	  let seconds = ('0' + today.getSeconds()).slice(-2); 

	    	  let timeString = hours + ':' + minutes  + ':' + seconds;
			 alert("?????? ????????? "+timeString);
		})
		$("#bookbag").on("click", function() {
			location.href = "/delivery/selectBookbagListById";
		})
		$("#bookshelves").on("click", function() {
			location.href = "/bookshelves/selectBookshelvesListById";
		})
		 $("#mypage").on("click", function() {
        	location.href = "/member/toMypage";
     	 })
      
       //footer: ????????? ?????? ?????? ??????
       $("#business_info_text").hide();

                    $("#business_info_title, #arrow_down2").click(function() {

                        $("#business_info_text").slideToggle(200);

                            $("#arrow_up2").css("display", "block");
                            $("#arrow_down2").css("display", "none"); 
 
                    });

                    $("#arrow_up2").click(function() {
                        $("#business_info_text").slideToggle(200);

                        $("#arrow_down2").css("display", "block");
                        $("#arrow_up2").css("display", "none");
                    });
	</script>
</body>
</html>