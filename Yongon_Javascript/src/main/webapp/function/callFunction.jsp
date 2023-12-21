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
hello('영건', '프로그래머');
function hello(name, job){

	document.write("안녕 내 이름은 "+name+"이고, 직업은 "+job+"지.");
	document.write("<br>");
}
hello('김영건', '교사');

/* hello2('김영우', '경찰'); */
var hello2 = function (name, job) {

	document.write("안녕? 내 이름은 "+name+"이고, 직업은 "+job+"(이)지.");
	document.write("<br>");
}
hello2('김영우', '경비');

hello2('한상원');
hello2('상원이', '학생');
hello2('뽕밭이', '대학생', '남자');	// 함수 선언 시의 인자보다 많은 입력값은 무시됨.
</script>
</body>
</html>