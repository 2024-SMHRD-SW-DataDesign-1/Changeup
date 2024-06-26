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
	height: 95vh;
	width: 100%;
	background-color: rgba(70, 70, 70, 1);
	overflow: hidden;
}

#screen {
	height: 100%;
	width: 100%;
	max-width: 80vw;
	margin: 5vh 10vw 0 10vw;
	width: 100%;
}

#screen_ad {
	height: 8%;
	background-color: white;
	color: black;
	display: flex;

	position: relative;
	justify-content: center;
	flex-direction: column;
	text-align: center;
}

#screen_top {
	height: 10%;
	margin: 3vh 0 2vh 0;
}

#screen_bottom {
	height: 50vh;
	width: 100%;
}




.ainputContent {
	display: inline-block;
	vertical-align: top;
}

/* 자본금 */
input{
	background-color: rgba(212, 212, 255, 0.035);
	height: 6vh;
	
	min-width: 8%;
	vertical-align: top;
	font-size: 1em;
	display: inline-block;
	border-radius: 3px;
	border: 1px solid #bfbfbf;
}

/* 지역, 업종, 검색 */
.selbox, button {
	min-width: 10%;
	vertical-align: top;
	font-size: 1em;
	display: inline-block;
	margin-right: 2vw;
	border-radius: 3px;
	border: 1px solid #bfbfbf;
}

#na {
	margin-top: 4vh;
	font-size: 0.8em;
}



select {
	width: 100%;
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
				<li><a href="Info_data">창업 트렌드</a></li>
				<li><a href="Info_policy">지원 정책</a></li>

			</ul>
		</nav>

		<!-- Banner -->
		<section id="banner" class="style2">
			<div class="inner">
				<span class="image"> <img
					src="${path}/resources/images/recommend_02_unsplash.jpg" alt="" />
				</span>
				<header>
					<h1>창업 추천</h1>
				</header>
			</div>
		</section>

		<!-- Main -->
		<section id="main">
			<div id="screen">
				<div id="screen_ad">
					<a href="https://smhrd.or.kr/" style="border: 0;"> 광고) 취준생이 아직도
						이걸 모르신다구요? <br> >>>> 취업하고 싶다면 지금 바로 클릭! <<<<
					</a>
				</div>
				<div id="screen_top">
					<div class="ainputContent" style="margin-right: 1.5%;">
						<b>자본금</b> <br> <input type="number" id="q"> 원 <br>
					</div>

					<div class="ainputContent">
						<b>지역</b> <br>
						<div class="selbox">
							<select name="mainsel" id="maincity">
								<option value="광주광역시">광주광역시</option>
							</select>
						</div>

						<div class="selbox">
							<select name="subsel" id="subcity" onchange="subCityChange(this)">
								<option>구</option>
								<option value="동구">동구</option>
								<option value="서구">서구</option>
								<option value="남구">남구</option>
								<option value="북구">북구</option>
								<option value="광산구">광산구</option>
							</select>
						</div>
						<div class="selbox">
							<select name="region" id="region">
								<option>동</option>
							</select>
						</div>
					</div>

					<div class="ainputContent">
						<b>원하는 업종</b><br>
						<div class="selbox">
							<select id="sector">
								<option value="없음">없음</option>
								<option value="음식점">음식점</option>
								<option value="생활">생활</option>
								<option value="패션, 뷰티">패션, 뷰티</option>
								<option value="레저">레저</option>
								<option value="취미, 오락">취미, 오락</option>
								<option value="관광">관광</option>
								<option value="1차 산업">1차 산업</option>
								<option value="2차 산업">2차 산업</option>
								<option value="기타 서비스업">기타 서비스업</option>
							</select>
						</div>
					</div>

					<div class="ainputContent">
						<button type="button" id="na">검색하기</button>
					</div>
				</div>
				<hr style="height: 1%;">
				<div id="screen_bottom">
					<textarea rows="15" cols="50" id="QnA" readonly
						style="height: 100%; border-radius: 3px; border: 1px solid #bfbfbf;">정보를 입력하고 검색하기를 누른 뒤 잠시만 기다려주세요!</textarea>
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

	<script type="importmap"> {"imports": {"@google/generative-ai": "https://esm.run/@google/generative-ai"} } </script>
	<script type="module">
   import { GoogleGenerativeAI } from "@google/generative-ai";

   const API_KEY = "AIzaSyDZmX5MrJQ6RxGdqJa8CxrhbDB3PBmIZvw";

   const genAI = new GoogleGenerativeAI(API_KEY);
   const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash"});

         

   $('#na').click(()=>{
      var userInput = $('#q').val();
      var userInput2 = $('#sector').val();
      $('#QnA').text('10초 정도 소요됩니다! 잠시만 기다려주세요!');
      $.ajax({
         url : "getData", // 요청 경로
         type : "post", // 요청 방식(get or post)
         dataType : "json",
         data : { region: $('#region').val() },
         success : function(list) {
                  
                  var prompt = "자본금이 " + userInput + " 원일 때,  유동 인구가 " + list.population + "명, 전체 업소 수가 " + list.sector + "개, 지역 총매출이 " + list.sales + "원, 직장 인구수가 " + list.job + "지역 평균 소득이 " + list.income + "원, 지역 평균소비액이 " + list.consume + "원, 총 세대수가 " + list.household + "개, 주거 인구가 " + list.resi_pop + "명인 광주광역시" + list.gu + " " + list.dong + "에서 창업하기 좋은 아이템 추천해줘(원하는 업종은 "+ userInput2 +")";

                   async function run() {
                       const result = await model.generateContent(prompt);
                       const response = await result.response;
                       const text = response.text();

                       $('#QnA').text(text);
                   }
                   run();
               },
         error : function() {
            alert("통신 실패")
         }
      })
   })
         
   </script>

	<script>
		
	</script>
	<script src="${path}/resources/assets/js/Info_Recommend.js"></script>
	<script src="${path}/resources/assets/js/jquery.min.js"></script>
	<script src="${path}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="${path}/resources/assets/js/jquery.scrollex.min.js"></script>
	<script src="${path}/resources/assets/js/browser.min.js"></script>
	<script src="${path}/resources/assets/js/breakpoints.min.js"></script>
	<script src="${path}/resources/assets/js/util.js"></script>
	<script src="${path}/resources/assets/js/main.js"></script>
</body>
</html>