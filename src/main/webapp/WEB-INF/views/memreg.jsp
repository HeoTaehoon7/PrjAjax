<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <form action="/Write" method="GET">
  아이디<input type="text" name="id" />
  <input type="button" value="중복확인" id="btnIdCheck"/>
    <div id="output"></div>
  <br>   
  암호<input type="text" name="pass" /><br>   
  이름<input type="text" name="name" /><br>
  <input type="submit" value="가입" />
  </form>

  <script>
     const  btnIdCheckEl = document.querySelector('#btnIdCheck');
     btnIdCheckEl.onclick = function(e) {     
    	// alert('중복확인체크');
    	 const  outputEl = document.querySelector('#output');
    	 
    	 // location.href = 'http://localhost:9090/Write?id=aaa&pass=aaa&name=aaa'
    	 /*
    	 fetch(url, options)
		  .then((response) => console.log("response:", response))
		  .catch((error) => console.log("error:", error));
         */    	 
         let    intext    = document.querySelector('[name=id]');
         // 서버 Controller에 있는 /IdDupCheck 주소를 실행 
         fetch('/IdDupCheck?id=' + intext.value)
           .then(response => response.text())  // 서버 data 가 html
           .then((data) => {   // data <- response.text()
        	  console.log(data);
    	 	  outputEl.innerHTML = data;    	 
         })             	 
     }
     
     /*
     페이지 변경하지 않고 서버 데이터를 조회 - javascript
 	Asynchronous JavaScript And XML : AJAX 기법 비동기 호출
	1. XHR 객체 -  XMLHttpRequest 객체 - old
	2. $.ajax() - jquery 
	3. axios 라이브러리 : Node.js 라이브러리 : 기능 가장 많다
	4. fetch()  - 순수 자바스크립트 바닐라
     */
  
  </script>

</body>
</html>




