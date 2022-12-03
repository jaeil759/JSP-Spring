<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원가입</h3>
	<form action = "#" name = "member" method = "post">
		<p>아이디 : <input type = "text" name = "id"/> <input type = "button" value = "아이디중복검사"/></p>
		<p>비밀번호 : <input type = "password" name = "passwd"/></p>
		<p>이름 : <input type = "text" name = "name"/></p>
		<p>연락처 : <input type = "text" maxlength="4" size = "4" name = "phone1"/>
		- <input type = "text" maxlength="4" size = "4" name = "phone2"/>
		- <input type = "text" maxlength="4" size = "4" name = "phone3"/>
		</p>
		<!-- 남성이 초기값으로 선택되도록 checked 속성을 설정 -->
		<p>성별 : <input type = "radio" name = "sex" value = "남성" checked = "checked"/>남성
		<input type = "radio" name = "sex" value = "여성"/>여성
		</p>
		<p>취미 : 독서<input type = "checkbox" name = "hobby1" checked = "checked"/>
		 운동<input type = "checkbox" name = "hobby1" checked = "checked"/>
		 영화<input type = "checkbox" name = "hobby1" checked = "checked"/>
		</p>
		<!--입력한 데이터를 서버로 전송하도록 input태그의 type 속성값을 submit으로 작성
		입력한 데이터를 지우도록 input 태그의 type 속성값을 reset으로 작성  -->
		<!-- wrap = "off" : 줄바꿈 안함,
		"soft" : 자동 줄 바꿈,
		"hard" : 서버 전송시 캐리지 라턴(엔터문자) 문자를 전달
		html5에서 새롭게 추가된 기능, "hard"사용시 cols 속성이 명시됭 ㅓ있어야 합니다.  -->
		<textarea rows = "3" cols = "30" placeholder="가입인사를 남겨주세요"></textarea>
		
		
		<p>
			<input type = "submit" value = "가입하기"/>
			<input type = "reset" value = "초기화"/>
		</p>
			
		
	</form>
</body>
</html>