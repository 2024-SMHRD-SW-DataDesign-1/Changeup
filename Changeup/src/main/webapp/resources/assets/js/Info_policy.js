$("#na").click(function() {
				loadList($("#mainsel option:selected").text(), $("#subsel option:selected").text())
			})
			
function loadList(mainsel, subsel){
				
					if(mainsel=="지원대상"){
						$.ajax({
						url:"getPolicy1/" + subsel, // 요청경로
						type:"get", // 요청방식( get / post )
						dataType:"json", //서버에서 반환받는 데이터 형식
						success : listMain,
						error : function(){
								alert("통신 실패")
							}
						})
					} else if (mainsel=="지역"){
						$.ajax({
							url:"getPolicy2/" + subsel, // 요청경로
							type:"get", // 요청방식( get / post )
							dataType:"json", //서버에서 반환받는 데이터 형식
							success : listMain,
							error : function(){
									alert("통신 실패")
								}
							})
					} else if (mainsel=="나이"){
						$.ajax({
							url:"getPolicy3/" + subsel, // 요청경로
							type:"get", // 요청방식( get / post )
							dataType:"json", //서버에서 반환받는 데이터 형식
							success : listMain,
							error : function(){
									alert("통신 실패")
								}
							})
					} else if (mainsel=="업력"){
						$.ajax({
							url:"getPolicy4/" + subsel, // 요청경로
							type:"get", // 요청방식( get / post )
							dataType:"json", //서버에서 반환받는 데이터 형식
							success : listMain,
							error : function(){
									alert("통신 실패")
								}
							})
					} else if (mainsel=="---"){
						$.ajax({
							url:"getPolicy", // 요청경로
							type:"get", // 요청방식( get / post )
							dataType:"json", //서버에서 반환받는 데이터 형식
							success : listMain,
							error : function(){
									alert("통신 실패")
								}
							})
					}
					
			}
			
function listMain(data){
					console.log(data.length);
					var result = ""
					if(data.length>0){
					$.each(data, (index,p)=> {
						result += "<tr>";
						result += "<td><a href=" + p.link + ">" + p.title + "</a></td>";
						result += "<td>" + p.target + "</td>";
						result += "<td>" + p.region + "</td>";
						result += "<td>" + p.targetAge + "</td>";
						result += "<td>" + p.career + "</td>";
						result += "</tr>";
					})} else {
						result += "<tr>";
						result += "<td colspan='5' id='nodata'> 해당하는 정보가 없습니다. </td>";
						result += "</tr>";
					}
					$("#mainList").html(result);
				}
				
function subselChange(e) {
        var targetsel = ["전체", "대학생", "일반인", "대학", "연구기관", "일반기업", "1인 창조기업"];
        var regionsel = ["전국", "서울특별시", "부산광역시", "광주광역시", "인천광역시", "대전광역시", "울산광역시", "대구광역시", "경기도", "강원도", "충청북도", "충청남도", "전라남도", "전라북도", "경상북도", "경상남도"];
        var agesel = ["전체", "만 20세 이상 ~ 만 39세 이하", "만 40세 이상"];
        var careersel = ["전체", "예비창업자", "1년미만", "2년미만", "3년미만", "5년미만", "7년미만", "10년미만"];
        var sel = ["---"];

        var target = document.getElementById("subsel");


        if(e.value == "지원대상") var subsel = targetsel;
       	else if(e.value == "지역") var subsel = regionsel;
       	else if(e.value == "나이") var subsel = agesel;
       	else if(e.value == "업력") var subsel = careersel;
       	else if(e.value == "---") var subsel = sel;

       	target.options.length = 0;

        for (x in subsel) {
            var opt = document.createElement("option");
            opt.value = subsel[x];
            opt.innerHTML = subsel[x];
            target.appendChild(opt);
        }   
    	}