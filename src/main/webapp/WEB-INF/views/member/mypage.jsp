<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
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
	box-shadow: 2px 2px 2px 2px #80808050;
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

span, #logoImg:hover {
	cursor: pointer;
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

.login_form {
	margin-top: 200px;
}

/* navi */
.navi {
	width: 100%;
	height: 50px;
}

/* body */
.body {
	width: 740px;
	margin: auto;
}

.body-hr {
	margin-bottom: 15px;
	border-top: 1px solid rgb(216, 216, 216);
}

.body-top {
	height: 50px;
	text-align: center;
	font-size: 33px;
}

.prof_img {
	padding-bottom: 20px;
	text-align: center;
}

#prof_img {
	border-radius: 50%;
	width: 120px;
	height: 120px;
	border: 1px solid #d5d5d5;
	box-shadow: 3px 3px #80808050;
}

.body-title-mem {
	height: 50px;
	padding-top: 25px;
	font-size: 20px;
	color: #5397fc;
	text-shadow: 1px 1px #80808050;
}

.body-title {
	height: 70px;
	padding-top: 45px;
	font-size: 20px;
	color: #5397fc;
	text-shadow: 1px 1px #80808050;
}

.info {
	overflow: hidden;
}

.body-left {
	float: left;
	width: 20%;
	height: 33px;
	padding-bottom: 15px;
	font-weight: bold;
	padding-bottom: 15px;
}

.body-right {
	width: 80%;
	height: 33px;
	float: right;
	padding-bottom: 15px;
}

.body-btn-div {
	text-align: center;
	height: 200px;
}

.body-btn {
	width: 180px;
	height: 40px;
	margin-top: 50px;
	color: #ffffff;
	border: none;
	border-radius: 5px;
	background-color: #5397fc;
	box-shadow: 3px 3px #80808050;
}

<<<<<<<
HEAD

.body-btn:hover {
	margin-left: 5px;
	margin-top: 47px;
	box-shadow: none;
}

/* footer */
.footer {
	margin: 5px;
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
							</a>
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
			<div class="prof_img">
				<img src="/resources/profile/${dto.sysprofname}" id="prof_img">
			</div>
			<div class="body-top">${dto.nickname }</div>
			<c:choose>
				<c:when test="${dto.grade eq '?????????'}">
					<div class="mem info">
						<div class="body-title-mem">????????????</div>
						<hr class="body-hr">
						<div class="body-left">??????</div>
						<div class="body-right">${dto.name }</div>
						<div class="body-left">?????????</div>
						<div class="body-right">${dto.nickname }</div>
						<div class="body-left">????????? ??????</div>
						<c:choose>
							<c:when test="${dto.phone eq null }">
								<div class="body-right">-</div>
							</c:when>
							<c:otherwise>
								<div class="body-right">${dto.phone }</div>
							</c:otherwise>
						</c:choose>
						<div class="body-left">?????????</div>
						<div class="body-right">${dto.email }</div>
						<div class="body-left">??????</div>
						<div class="body-right">${dto.address1 }</div>
						<div class="body-left">????????????</div>
						<div class="body-right">${dto.address2 }</div>
					</div>
					<hr style="border-top: 1px rgb(216, 216, 216);">
					<div class="sub info">
						<div class="body-title">???????????????</div>
						<hr class="body-hr">
						<div style="text-align: center; height: 150px; line-height: 150px">??????
							?????? ?????? ???????????? ????????????!</div>
						<hr style="border-top: 1px rgb(216, 216, 216);">
						<div class="body-btn-div">
							<a href="/member/toUpdateMemInfo"><button class="body-btn"
									id="modify-btn" style="margin-right: 20px;">???????????? ??????</button></a>
							<button class="body-btn" id="sub-btn">????????? ?????? ????????????</button>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="mem info">
						<div class="body-title-mem">????????????</div>
						<hr class="body-hr">
						<div class="body-left">??????</div>
						<div class="body-right">${dto.name }</div>
						<div class="body-left">?????????</div>
						<div class="body-right">${dto.nickname }</div>
						<div class="body-left">????????? ??????</div>
						<c:choose>
							<c:when test="${dto.phone eq null }">
								<div class="body-right">-</div>
							</c:when>
							<c:otherwise>
								<div class="body-right">${dto.phone }</div>
							</c:otherwise>
						</c:choose>
						<div class="body-left">?????????</div>
						<div class="body-right">${dto.email }</div>
						<div class="body-left">??????</div>
						<c:choose>
							<c:when test="${dto.address1 eq null }">
								<div class="body-right">-</div>
							</c:when>
							<c:otherwise>
								<div class="body-right">${dto.address1 }</div>
							</c:otherwise>
						</c:choose>
						<div class="body-left">????????????</div>
						<c:choose>
							<c:when test="${dto.address2 eq null }">
								<div class="body-right">-</div>
							</c:when>
							<c:otherwise>
								<div class="body-right">${dto.address2 }</div>
							</c:otherwise>
						</c:choose>
					</div>
					<hr style="border-top: 1px rgb(216, 216, 216);">
					<div class="sub info">
						<div class="body-title">???????????????</div>
						<hr class="body-hr">
						<div class="body-left">????????????</div>
						<div class="body-right">${sdto.formedStartDate }~
							${sdto.formedEndDate }</div>
						<div class="body-left">?????? ?????? ??????</div>
						<div class="body-right">${sdto.delivery_count }???</div>
						<div class="body-left">?????? ?????? ??????</div>
						<div class="body-right">${sdto.rental_count }???</div>
					</div>
					<hr style="border-top: 1px rgb(216, 216, 216);">
					<c:choose>
						<c:when test="${rdto.formedRt_return_date < today}">
							<div class="rental info">
								<div class="body-title">????????????</div>
								<hr class="body-hr">
								<div
									style="text-align: center; height: 150px; line-height: 150px">??????
									?????? ?????? ?????? ????????????.</div>
							</div>
							<hr style="border-top: 1px rgb(216, 216, 216);">
						</c:when>
						<c:otherwise>
							<div class="rental info">
								<div class="body-title">????????????</div>
								<hr class="body-hr">
								<div class="body-left">??????</div>
								<div class="body-right">${dto.address1 }(${dto.address2 })</div>
								<div class="body-left">?????? ???</div>
								<div class="body-right">${dto.reciver }</div>
								<div class="body-left">???????????????</div>
								<div class="body-right">${dto.reciver_phone }</div>
								<div class="body-left">?????? ?????????</div>
								<div class="body-right">${rdto.formedRt_rental_date }</div>
								<div class="body-left">?????????</div>
								<div class="body-right">${rdto.formedRt_return_date }</div>
							</div>
							<hr style="border-top: 1px rgb(216, 216, 216);">
						</c:otherwise>
					</c:choose>
					<div class="body-btn-div">
						<a href="/member/toUpdateMemInfo"><button class="body-btn"
								id="modify-btn">???????????? ??????</button></a>
					</div>
				</c:otherwise>
			</c:choose>
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
			<!--  <p class="copyright">??BOOKDAY Corp.</p> -->
		</div>
	</div>
	<script>
    //????????? ?????? ?????? ???
	$( document ).ready( function() {
		
	    
	  	if(${dto.sysprofname == '0'}){
	  		
	  		$("#prof_img").attr("src","/resources/basic.png");
							return;
						}
	   });
	
      $("#logoImg").on("click", function() {
         location.href = "/";
      })
      $("#searchword").on("keydown", function(e) {
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
         if(${loginID == null}) {
              location.href = "/member/toLogin";
         }else {
              location.href = "/delivery/selectBookbagListById?id=${loginID }";
         }
      })
      $("#bookshelves").on("click", function() {
         location.href = "/bookshelves/selectBookshelvesListById";
      })
      $("#mypage").on("click", function() {
         if (${loginID == null}) {
            location.href = "/member/toLogin";
            return false;
         }else {
         location.href = "/member/toMypage";
         }
      })
      // ???????????? ?????? ??????
      $("#sub-btn").on("click", function() {
          if(${loginID == null}) {
                 location.href = "/member/toLogin";
            }else {
                 location.href = "/delivery/toPayment?id=${loginID }";
            }
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