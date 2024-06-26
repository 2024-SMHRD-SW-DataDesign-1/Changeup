	function loadList(gu){
		$.ajax({
			url:"mainlist/" + gu,
			type:"get",
			dataType:"json",
			success : listMain,
			error : function(){
				alert("통신 실패")
			}
		})
	}
	
	function loadSearch(gu) {
		// 게시물 전체 데이터 요청 함수
		$.ajax({
			url : "list2/" + gu, // 요청 경로
			type : "get", // 요청 방식(get or post)
			dataType : "json", // 서버에서 반환받는 데이터 형식
			success : listSearch,
			error : function() {
				alert("통신 실패")
			}
		})
	}
	
	function listSearch(data) {
		result = "";
		result += "<table class='searchTable'>";
		result += "<tr><th colspan='2' style='text-align: center; font-size: 1em; padding: 0.8em 0 0 0;'>검색 순위</th></tr>";
		result += "<tr>";
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
		result += "</table>";

		$("#searchList").html(result);
	}
			
	
	// 상권정보 표
	function listMain(data){
		var result = ""
		result += "<table class='mainTable' id='mainList'>";
		result += "<thead>";
		result += "<th width=12%>동</th>";
		result += "<th width=8%>업소</th>";
		result += "<th width=12%>유동인구</th>";
		result += "<th width=13%>매출</th>";
		result += "<th width=12%>직장인구</th>";
		result += "<th width=10%>소득</th>";
		result += "<th width=10%>소비</th>";
		result += "<th width=9%>세대수</th>";
		result += "<th width=13%>주거인구</th>";
		result += "</tr>";
		result += "</thead>";
		result += "<tbody id='datext'>";
		$.each(data, (index,vo)=> {
			result += "<tr>";
			result += "<td>"+vo.dong+"</td>";
			result += "<td>"+vo.sector+"</td>";
			result += "<td>"+vo.population+"</td>";
			result += "<td>"+vo.sales+"</td>";
			result += "<td>"+vo.job+"</td>";
			result += "<td>"+vo.income+"</td>";
			result += "<td>"+vo.consume+"</td>";
			result += "<td>"+vo.household+"</td>";
			result += "<td>"+vo.resi_pop+"</td>";
			result += "</tr>"
		})
		result += "</tbody>";
		result += "</table>";
		$("#mainList").html(result);
		
	// 상권정보 표
	function listMain(data){
		$.each(data, (index,vo)=> {
			var result=""
			result += "<table id='mainList'>";
			result += "<tr>";
			result += "<td>"+vo.sector+"</td>";
			result += "</tr>"
		})
		$("#mainList").html(result);
	}
		
         
         
		// 차트 생성
		var labels = [];
		var chart_sector = [];
		var chart_population = [];
		var chart_sales = [];
		var chart_job = [];
		var chart_income = [];
		var chart_consume = [];
		var chart_household = [];
		var chart_resi_pop = [];
         
		$.each(data, (index,vo)=> { //data : boardlist / vo : Board
			labels.push(vo.dong);
			chart_sector.push(vo.sector.replace(",", ""));
			chart_population.push(vo.population.replace(",", ""));
			chart_sales.push(vo.sales.replace(" 만원", "").replace(",", ""));
			chart_job.push(vo.job.replace(" 명", "").replace(",", ""));
			chart_income.push(vo.income.replace(" 만원", "").replace(",", ""));
			chart_consume.push(vo.consume.replace(" 만원", "").replace(",", ""));
			chart_household.push(vo.household.replace(",", ""));
			chart_resi_pop.push(vo.resi_pop.replace(" 명", "").replace(",", ""));
		})

		if (window.chart_main) {
			window.chart_main.destroy();
		}

		var ctx = document.getElementById('myChart').getContext('2d');
      
		window.chart_main = new Chart(ctx, {
			type: 'line',
			data: {
				labels: labels,
				datasets: [{
					label: '업소',
					data: chart_sector,
					borderColor: 'red',
					borderWidth: 1,
					hidden: true
				}, {
					label: '유동인구',
					data: chart_population,
					borderColor: 'orange',
					borderWidth: 1,
					hidden: true
				}, {
					label: '매출',
					data: chart_sales,
					borderColor: 'blue',
					borderWidth: 1,
					hidden: true
				}, {
					label: '직장인구',
					data: chart_job,
					borderColor: 'green',
					borderWidth: 1,
					hidden: true
				}, {
					label: '소득',
					data: chart_income,
					borderColor: 'blue',
					borderWidth: 1,
					hidden: true
				}, {
					label: '소비',
					data: chart_consume,
					borderColor: 'brown',
					borderWidth: 1,
					hidden: true
				}, {
					label: '세대수',
					data: chart_household,
					borderColor: 'purple',
					borderWidth: 1,
					hidden: true
				}, {
					label: '주거인구',
					data: chart_resi_pop,
					borderColor: 'black',
					borderWidth: 1,
					hidden: true
					
				}]
			},
			options: {
				legend: {
					display: false
				},
				scales: {
						y: {
							beginAtZero: true
							}
				}
			}
		});
	}