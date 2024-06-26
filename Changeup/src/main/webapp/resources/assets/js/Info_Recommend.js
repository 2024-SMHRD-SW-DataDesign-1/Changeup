function subCityChange(e) {
            var sub_east = ["동", "산수1동", "산수2동", "지원1동", "지원2동", "계림1동", "계림2동", "학운동"];
            var sub_west = ["동", "상무1동", "상무2동", "풍암동", "치평동", "화정1동", "화정2동", "화정3동", "화정4동"];
            var sub_south = ["동", "진월동", "월산동", "봉선1동", "봉선2동", "송암동", "대촌동"];
            var sub_north = ["동", "일곡동", "양산동", "용봉동", "매곡동", "건국동", "동림동", "문흥1동", "문흥2동"];
            var sub_gs = ["동", "수완동", "첨단1동", "첨단2동", "신창동", "운남동", "하남동", "신가동", "월곡1동", "월곡2동", "도산동"];
            var sub_ = ["동"];

            var target = document.getElementById("region");


            if(e.value == "동구") var subCity = sub_east;
           	else if(e.value == "서구") var subCity = sub_west;
           	else if(e.value == "남구") var subCity = sub_south;
           	else if(e.value == "북구") var subCity = sub_north;
           	else if(e.value == "광산구") var subCity = sub_gs;
           	else if(e.value == "구") var subCity = sub_;

           	target.options.length = 0;

            for (x in subCity) {
                var opt = document.createElement("option");
                opt.value = subCity[x];
                opt.innerHTML = subCity[x];
                target.appendChild(opt);
            }   
        }