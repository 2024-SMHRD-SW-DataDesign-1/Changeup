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
	height: 85vh;
	width: 100%;
	max-width: 80vw;
	margin: 5vh 10vw 5vh 10vw;
}

#table {
	height: 75vh;
	overflow-y: auto;
}

/* 스크롤바 스타일 */
#table::-webkit-scrollbar {
	width: 12px;
}

#table::-webkit-scrollbar-track {
	background-color: rgba(70, 70, 70, 1);
}

#table::-webkit-scrollbar-thumb {
	background-color: rgba(100, 100, 100, 1); /* 배경색보다 약간 밝게 설정 */
	border-radius: 6px;
}

a {
	border: 0;
}

table th{
	vertical-align: middle;
	padding:0.4em 0.75em 0.4em 0.75em;
}

table td {
	padding: 0.3em 0.3em;
	vertical-align: middle;
	font-size: 0.8em;
}

#supportTable thead {
	position: sticky;
	top: 0;
	background-color: rgba(212, 212, 255);
	z-index: 1;
	margin-top: 0;
}

.ainput {
	margin-top: 40px;
	margin-bottom: 40px;
}

#q {
	background-color: rgba(212, 212, 255, 0.035);
	width: 150px;
	height: 50px;
	box-shadow: none;
	border: 1px solid #00000000;
	border-radius: 0px;
	margin-bottom: 20px;
}

.ainputContent {
	display: inline-block;
	margin-right: 30px;
}

.selBox {
	width: 100%;
	min-width: 10vw;
	vertical-align: top;
	margin-top: 1vh;
	border-radius: 3px;
	border: 1px solid #bfbfbf;
	background-color: rgba(128, 128, 128, 0.8);
	color: white;
	font-size: 1em;
	padding: 0.5em 1em;
}

/*
.selBox {
	display: inline-block;
	margin-right: 5px;
}
*/

button{
	border-radius: 3px;
	border: 2px solid #bfbfbf;
	box-shadow: none;
}

#nodata {
	text-align: center;
}
</style>


</head>

<body class="is-preload">


	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
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

		<!-- Banner -->
		<section id="banner" class="style2">
			<div class="inner">
				<span class="image"> <img
					src="${path}/resources/images/support_01_pixabay.jpg" alt="" />
				</span>
				<header>
					<h1>창업 지원 제도</h1>
				</header>
			</div>
		</section>

		<!-- Main -->
		<!-- One -->
		<section id="main">
			<div id="screen">
				<div class="ainput">
					<div class="ainputContent">

							<select name="mainsel" id="mainsel" class="selBox" onchange="subselChange(this)">
								<option value="---">---</option>
								<option value="지원대상">지원대상</option>
								<option value="지역">지역</option>
								<option value="나이">나이</option>
								<option value="업력">업력</option>
							</select>

					</div>
					<div class="ainputContent">
							<select name="subsel" id="subsel" class="selBox">
								<option>---</option>
							</select>
					</div>

					<div class="ainputContent">
						<button type="button" id="na">조회</button>
						<button type="button" id="reset">초기화</button>
					</div>


				</div>
				<div id="table">
					<table id="supportTable">
						<thead>
							<tr>
								<th style="width: 30vw;">지원제도</th>
								<th style="width: 20vw;">지원대상</th>
								<th style="width: 10vw;">지역</th>
								<th style="width: 15vw;">나이</th>
								<th style="width: 13vw;">업력</th>
							</tr>
						</thead>
						<tbody id="mainList">
							<c:forEach var="p" items="${list}">
								<tr>
									<td><a href="${p.link}">${p.title}</a></td>
									<td>${p.target}</td>
									<td>${p.region}</td>
									<td>${p.targetAge}</td>
									<td>${p.career}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</section>

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
	<script type="text/javascript">
		$("#reset").click(function() {
			$("select[id=mainsel] option:eq(0)").prop("selected", true);

			var target = document.getElementById("subsel");
			target.options.length = 0;
			var opt = document.createElement("option");
			opt.value = "---";
			opt.innerHTML = "---";
			target.appendChild(opt);

			loadList("---", "---")
		})
	</script>
	<script src="${path}/resources/assets/js/Info_policy.js"></script>
	<script src="${path}/resources/assets/js/jquery.min.js"></script>
	<script src="${path}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${path}/resources/assets/js/jquery.scrollex.min.js"></script>
	<script src="${path}/resources/assets/js/browser.min.js"></script>
	<script src="${path}/resources/assets/js/breakpoints.min.js"></script>
	<script src="${path}/resources/assets/js/util.js"></script>
	<script src="${path}/resources/assets/js/main.js"></script>
	<!-- <script src="city.js"></script> -->
</body>
</html>