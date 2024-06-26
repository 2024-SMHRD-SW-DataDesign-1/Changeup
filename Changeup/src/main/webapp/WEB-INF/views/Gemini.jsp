<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  -->
	<script type="importmap">
      {
        "imports": {
          "@google/generative-ai": "https://esm.run/@google/generative-ai"
        }
      }
    </script>
	<script type="module">
	import { GoogleGenerativeAI } from "@google/generative-ai";

	const API_KEY = "AIzaSyDZmX5MrJQ6RxGdqJa8CxrhbDB3PBmIZvw";

	const genAI = new GoogleGenerativeAI(API_KEY);
	const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash"});

	async function run() {

  	const prompt = "Write a story about a magic backpack."

  	const result = await model.generateContent(prompt);
	const response = await result.response;
  	const text = response.text();
 	console.log(text);
	}

	run();
    </script>

</body>
</html>