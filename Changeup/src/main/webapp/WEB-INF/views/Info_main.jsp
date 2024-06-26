<%@page import="com.smhrd.changeup.model.InfoMain"%>
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

<style>

/* 메인 */
#main {
	height: 95vh;
	width: 100%;
	background-color: rgba(70, 70, 70, 1);
	/* 최소 높이를 지정하여 화면에 채움 */
	overflow: hidden; /* 오버플로우 숨김 */
}

/* main 내 화면분할 */
#screen {
	width: 100%;
	max-width: 80vw;
	margin: 5vh 10vw 0 10vw;
}

/* screen 왼쪽영역 */
#screen_left {
	float: left;
	height: 20%;
	width: 15vw;
	margin: 0vh 0vh 0vh 0vh;
}

/* screen 중간영역 */
#screen_middle {
	float: left;
	height: 35vh;
	margin-left: 6vw;
	width: 35vw;
	background-color: rgba(226, 226, 226, 0.9);
}

/* screen 오른쪽영역 */
.screen_right {
	float: right;
	margin: 0vh 2vw 0vh 0vh;
	height: 80vh;
	width: 15vw;
	background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
	color: white;
	border-radius: 10px;
}

/* screen 아래쪽영역 */
.screen_bottom {
	float: left;
	overflow-y: auto;
	margin: 5vh 0px 0px 0vh;
	height: 40vh;
	width: 57vw;
}

.selBox {
	width: 100%;
	vertical-align: top;
	margin-top: 1vh;
	border-radius: 3px;
	border: 1px solid #bfbfbf;
	background-color: rgba(128, 128, 128, 0.8);
	color: white;
	font-size: 1em;
	padding: 0.5em 1em;
}

.mainTable {
	width: 100%;
	border-collapse: collapse;
}

.mainTable th {
	position: sticky;
	vertical-align: middle;
	padding: 0.4em 0.75em 0.4em 0.75em;
	top: 0;
	border: 1px solid #ccc;
	text-align: center;
	background-color: #8d82c4;
	font-size: 0.8em;
	top: 0;
	padding: 0.4em 0.75em 0.4em 0.75em;
}

.mainTable td {
	border: 1px solid #ccc;
	text-align: center;
	color: black;
	background-color: rgb(212, 212, 212);
	font-size: 0.8em;
	padding-top: 0.2em;
	padding-bottom: 0.2em;
}

.searchTable {
	height: 100%;
	min-height: 0;
	font-size: 0.8em;
	color: white;
}

.searchTable {
	height: 100%;
	min-height: 0;
	font-size: 0.8em;
	color: white;
}

.searchTable th {
	text-align: center;
	font-size: 1em;
	padding: 0.8em 0 0 0;
}

.searchTable td {
	text-align: left;
}
</style>



</head>
<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Header -->
		<!-- Note: The "styleN" class below should match that of the banner element. -->
		<header id="header" class="alt style2">
			<a href="ChangeupMainPage" class="logo"><strong>CHANge
					UP</strong> <span>Main</span></a>
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
<!--  -->
		<!-- Banner -->
		<!-- Note: The "styleN" class below should match that of the header element. -->
		<section id="banner" class="style2">
			<div class="inner">
				<span class="image"> <img src="images/market_01_pixabay.jpg"
					alt="" />
				</span>
				<header>
					<h1>상권 정보</h1>
				</header>
				<!--
				<div class="content">
					<p>지역별 상권 정보</p>
				</div>
-->
			</div>
		</section>

		<!-- Main -->
		<div id="main">
			<div id="screen">
				<div id="screen_left">
					<br> <select background:
						rgba(128,128,128,0.8)" name="city_1st" id="city_1st"
						class="selBox">
						<option>광주광역시</option>
					</select> <br> <select background:
						rgba(128,128,128,0.8)" name="city_2nd" id="city_2nd"
						class="selBox">
						<option value="east">동구</option>
						<option value="west">서구</option>
						<option value="south">남구</option>
						<option value="north">북구</option>
						<option value="gs">광산구</option>
					</select> <br> <input type="submit" id="searchInfo"
						style="border-radius: 3px; border: 2px solid #bfbfbf; box-shadow: none;">
				</div>

				<div id="screen_middle">
					<canvas id="myChart"></canvas>

				</div>

				<div class="screen_right" id="searchList">
					<table class="searchTable">
						<tr>
							<th colspan="2"
								style="text-align: center; font-size: 1em; padding: 0.8em 0 0 0;">
								검색 순위</th>
						</tr>
						<tr>
							<td>1위</td>
							<td></td>
						</tr>
						<tr>
							<td>2위</td>
							<td></td>
						</tr>
						<tr>
							<td>3위</td>
							<td></td>
						</tr>
						<tr>
							<td>4위</td>
							<td></td>
						</tr>
						<tr>
							<td>5위</td>
							<td></td>
						</tr>
						<tr>
							<td>6위</td>
							<td></td>
						</tr>
						<tr>
							<td>7위</td>
							<td></td>
						</tr>
						<tr>
							<td>8위</td>
							<td></td>
						</tr>
						<tr>
							<td>9위</td>
							<td></td>
						</tr>
						<tr>
							<td>10위</td>
							<td></td>
						</tr>
					</table>
				</div>

				<div class="screen_bottom" id="mainList">
					<table class="mainTable">
						<tr>
							<th width=12%>동</th>
							<th width=8%>업소</th>
							<th width=12%>유동인구</th>
							<th width=13%>매출</th>
							<th width=12%>직장인구</th>
							<th width=10%>소득</th>
							<th width=10%>소비</th>
							<th width=9%>세대수</th>
							<th width=13%>주거인구</th>
						</tr>
					</table>
				</div>

			</div>
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



	<!--Scripts -->
	
	<script type="text/javascript">
		$("#searchInfo").click(function() {
			loadList($("#city_2nd option:selected").text())
			loadSearch($("#city_2nd option:selected").text())
		})
	</script>


	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


	<script src="${path}/resources/assets/js/Info_main.js"></script>
	<script src="${path}/resources/assets/js/jquery.min.js"></script>
	<script src="${path}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${path}/resources/assets/js/jquery.scrollex.min.js"></script>
	<script src="${path}/resources/assets/js/browser.min.js"></script>
	<script src="${path}/resources/assets/js/breakpoints.min.js"></script>
	<script src="${path}/resources/assets/js/util.js"></script>
	<script src="${path}/resources/assets/js/main.js"></script>
</body>
</html>