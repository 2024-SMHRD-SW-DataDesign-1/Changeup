<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE HTML>
<html>
<head>
<title>CHANGe UP!</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${path}/resources/assets/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!--  -->
<style>
#main {
	height: 72vh;
}

/* main 왼쪽영역 */
.main_left {
	float: left;
	height: 100%;
	width: 50%;
	background-size: 100% 100%;
	background-color: #6fc3df;
}
/* 글자 위치 */
.main_left>header.major {
	position: relative;
	left: 10%;
	top: -60%;
}

/* 사진 초기 상태( 투명 ) */
.main_left_2 {
	top: 0px;
	left: 0px;
	opacity: 0;
	transition: opacity 0.5s linear;
}
/* 마우스 올릴 때 사진 출력 */
.main_left:hover .main_left_2 {
	opacity: 1;
	display: block;
}

/* main 오른영역 */
.main_right {
	float: right;
	height: 100%;
	width: 50%;
	/*	background-color: #8d82c4;*/
}

/* main 오른쪽 영역 위 */
.right_top {
	height: 36vh;
	background-color: #ec8d81;
}

/* 글자 위치 */
.right_top>header.major {
	position: relative;
	left: 10%;
	top: -70%;
}

/* 사진 초기 상태( 투명 ) */
.right_top_2 {
	top: 0px;
	left: 0px;
	opacity: 0;
	transition: opacity 0.5s linear;
}
/* 마우스 올릴 때 사진 출력 */
.right_top:hover .right_top_2 {
	opacity: 1;
	display: block;
}

/* main 오른쪽 영역 아래 */
.right_bottom {
	height: 36vh;
	background-color: #e7b788;
}

/* 글자 위치 */
.right_bottom>header.major {
	position: relative;
	left: 10%;
	top: -70%;
}

/* 사진 초기 상태( 투명 ) */
.right_bottom_2 {
	top: 0px;
	left: 0px;
	opacity: 0;
	transition: opacity 0.5s linear;
}
/* 마우스 올릴 때 사진 출력 */
.right_bottom:hover .right_bottom_2 {
	opacity: 1;
	display: block;
}

/* 하이퍼링크 그림 아래 점선 삭제( 장식 제거 ) */
a {
	border: 0;
	/*	text-decoration: none;*/
}
</style>
</head>

<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<a href="ChangeupMainPage" class="logo"><span>CHANGe</span><strong>UP</strong></a>
			<nav>
				<a href="#menu">Menu</a>
			</nav>
		</header>

		<!-- Menu -->
		<nav id="menu">
			<ul class="links">
				<li><a href="ChangeupMainPage">Home</a></li>
				<li><a href="Info_recommend">창업 추천</a></li>
				<li><a href="Info_main">상권 정보</a></li>
				<li><a href="Info_policy">지원 제도</a></li>
			</ul>
		</nav>

		<!-- Banner -->
		<section id="banner" class="major">
			<div class="inner">
				<header style="text-align: center">
					<h1>
						<a href="ChangeupMainPage"> <span
							style="color: rgb(0, 216, 216);">CHANG</span> <span
							style="color: rgb(252, 252, 252);">E</span> <i
							style="color: rgb(247, 250, 91); font-size: 130%;"> UP</i>
						</a>
					</h1>
				</header>
			</div>
		</section>

		<!-- Main -->
		<div id="main">

			<!-- One -->
			<a href="Info_recommend">
				<div class="main_left">
					<img src="${path}/resources/images/미쳤습니까휴먼.webp"
						class="main_left_2" width="100%" height="100%">

					<header class="major">
						<h3 style="font-size: 3em">창업 추천</h3>
						<p>AI 창업 아이템 추천</p>
					</header>
				</div>
			</a>

			<section class="main_right">
				<a href="Info_main">
					<div class="right_top">
						<img src="${path}/resources/images/골목상권.jfif" class="right_top_2"
							width="100%" height="100%">

						<header class="major">
							<h3 style="font-size: 2em">상권 정보</h3>
							<p>지역별 상권 정보</p>
						</header>
					</div>
				</a> <a href="Info_policy">
					<div class="right_bottom">
						<img src="${path}/resources/images/moneygun.png" class="right_bottom_2"
							width="100%" height="100%">
						<header class="major">
							<h3 style="font-size: 2em">지원 제도</h3>
							<p>다양한 창업 지원 제도</p>
						</header>
					</div>
				</a>
			</section>
		</div>
		
		<!-- Footer -->
		<footer id="footer">
			<div class="inner">
				<ul class="copyright">
					<li>&copy; 팀 바지사장</li>
					<li>이준서, 김도연, 최우준</li>
				</ul>
			</div>
		</footer>

	</div>


	<!-- Scripts -->
	<script src="${path}/resources/assets/js/jquery.min.js"></script>
	<script src="${path}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${path}/resources/assets/js/jquery.scrollex.min.js"></script>
	<script src="${path}/resources/assets/js/browser.min.js"></script>
	<script src="${path}/resources/assets/js/breakpoints.min.js"></script>
	<script src="${path}/resources/assets/js/util.js"></script>
	<script src="${path}/resources/assets/js/main.js"></script>
</body>
</html>