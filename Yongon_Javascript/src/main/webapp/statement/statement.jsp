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

// 변수 값을 바꾸는 부수효과
var greeting;
var name = 'younggeon';
var i;
var debugMessage;
function displaySpinner(){};
greeting = "Hello " + name;
i *= 3

// 함수 호출은 표현식이지만 프로그램 상태나 호스트 환경에
// 영향을 미치는 부수효과가 있음
console.log(debugMessage);
displaySpinner();	// 웹 앱에서 스피너를 표시하는 가상 함수


// 복합문 예제
{
	var x = Math.PI;
	var cx = Math.cos(x);
	console.log("cos(π) = " + cx);
}

var a={};
var b;
// 빈문 예제(세미콜론을 붙여서 하나의 문을 끝냄.)
// 배열 a를 초기화
for(let i = 0; i < a.length ; a[i++] = 0) /* 빈문 사용 시 주석처리 필수 */

// 세미콜론을 if문을 끝냈기 때문에 아무 일도 일어나지 않음.
if((a===0) || ( b===0));
	var o = null;	// if문과 상관없이 항상 실행됨.
console.log("o = "+o);
</script>
</body>
</html>