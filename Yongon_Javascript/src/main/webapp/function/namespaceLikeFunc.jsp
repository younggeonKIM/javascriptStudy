<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">

// 객체 리터럴
var app = app || {};

// 프로퍼티 추가
app.name = "준영";
app.age = 30;
app.gender = "남";
app.nameCard = function() {
	console.log('nameCard:', this); 	// 여기서 this는 app임.
	return this.age+"세" +this.name;
};
console.log(app.nameCard());

// 부분 네임스페이스 생성
app.subApp = {};
app.subApp.tempDate = new Date();
app.subApp.temp = function() {
	console.log('temp:', this);		// subApp을 가리킴
	return app.name+"의 입사일은 "+this.tempDate+"입니다.";
};
console.log(app.subApp.temp());
</script>
</body>
</html>