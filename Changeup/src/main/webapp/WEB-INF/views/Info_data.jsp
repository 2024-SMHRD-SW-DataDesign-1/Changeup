<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE HTML>
<html>
<head>
<title>CHANGe UP!</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${path}/resources/assets/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!--  -->
<style>
.full {
	padding: 50px 3em 50px 10em;
	width: 100%;
	height: 780px;
	/* background-color: grey; */
}

.screen_left {
	padding: 0px 3em 0.1em 1em;
	width: 600px;
	height: 680px;
	float: left;
	/* background-color: black; */
}

.screen_middle {
	/* position: relative;
					top: 100px;
					left: 1200px; */
	/* background-color: rgb(230, 250, 255); */
	position: relative;
	left: 100px;
	padding: 20px 20px 20px 20px;
	width: 400px;
	height: 700px;
	font-size: 20px;
	font-weight: bold;
	float: left;
}

.screen_right {
	position: relative;
	left: 300px;
	/* border: 20px 20px 20px 20px; */
	padding: 20px 1em 20px 0px;
	width: 200px;
	height: 680px;
	background-color: gray;
	background-clip: content-box;
	float: left;
}

.middleTable {
	border-collapse: separate;
	border-spacing: 1px;
}

#list {
	color: black;
	background-color: rgba(212, 212, 255, 0.5);
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
				<li><a href="Info_data">창업 트렌드</a></li>
				<li><a href="Info_policy">지원 정책</a></li>

			</ul>
		</nav>

		<!-- Banner -->
		<section id="banner" class="style2">
			<div class="inner">
				<span class="image"> <img src="${path}/resources/images/pic07.jpg" alt="" />
				</span>
				<header class="major">
					<h1>창업 트렌드</h1>
				</header>
				<div class="content">
					<p>지역별로 관심도가 높은 창업 아이템을 소개해드립니다.</p>
				</div>
			</div>
		</section>

		<!-- Main -->
		<section id="one">
			<div class="full">
				<div class="screen_left">
					<table>
						<tr bgcolor="whitesmoke">
							<td>광역시/도 :</td>
							<td><select>
									<option>광주광역시</option>
							</select></td>
						</tr>
						<tr></tr>
						<tr bgcolor="whitesmoke">
							<td>시/군/구 :</td>
							<td><select id="sel3">
									<option>동구</option>
									<option>서구</option>
									<option>남구</option>
									<option>북구</option>
									<option>광산구</option>
							</select></td>
						</tr>
					</table>
					<input type="submit" id="searchInfo"> <br> <br> <br>
				</div>

				<div class="screen_middle">
					<table class="middleTable" id="list">
						<tr>
							<td height="10px">1위</td>
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
		$("#searchInfo").click(function() {
			loadList($("#sel3 option:selected").text())
		})

		function loadList(Region) {
			// 게시물 전체 데이터 요청 함수
			$.ajax({
				url : "list2/" + Region, // 요청 경로
				type : "get", // 요청 방식(get or post)
				dataType : "json", // 서버에서 반환받는 데이터 형식
				success : listView,
				error : function() {
					alert("통신 실패")
				}
			})
		}

		function listView(data) {
			result = "";
			result += "<tr height=35px>";
			result += "<td> 1위 </td>";
			result += "<td>" + data.rank_1 + "</td>";
			result += "</tr> <tr>";
			result += "<td> 2위 </td>";
			result += "<td>" + data.rank_2 + "</td>";
			result += "</tr> <tr>";
			result += "<td> 3위 </td>";
			result += "<td>" + data.rank_3 + "</td>";
			result += "</tr> <tr>";
			result += "<td> 4위 </td>";
			result += "<td>" + data.rank_4 + "</td>";
			result += "</tr> <tr>";
			result += "<td> 5위 </td>";
			result += "<td>" + data.rank_5 + "</td>";
			result += "</tr> <tr>";
			result += "<td> 6위 </td>";
			result += "<td>" + data.rank_6 + "</td>";
			result += "</tr> <tr>";
			result += "<td> 7위 </td>";
			result += "<td>" + data.rank_7 + "</td>";
			result += "</tr> <tr>";
			result += "<td> 8위 </td>";
			result += "<td>" + data.rank_8 + "</td>";
			result += "</tr> <tr>";
			result += "<td> 9위 </td>";
			result += "<td>" + data.rank_9 + "</td>";
			result += "</tr> <tr>";
			result += "<td> 10위 </td>";
			result += "<td>" + data.rank_10 + "</td>";
			result += "</tr>";

			$("#list").html(result);
		}
	</script>

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