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
/* // 리터럴 표현식
10

// 식별자 표현식
sum

// 연산자 표현식
10 + 20

// 함수/메소드 호출 표현식
square() */

// 변수 선언문
var x;

// 할당문
x = 5;

// 함수 선언문
function foo() {}

// 조건문
if(x>5) {}

// 반복문
for(var i = 0 ; i < 10 ; i++){}

// 선언문은 값처럼 사용할 수 없음.
/* var foo = var x = 5 * 10; */ 	// 오류

// 할당문은 표현식인 문이기 때문에 값처럼 사용 가능.
var foo = x = 100;


// 산술 연산자
5 * 4 	// 20

// 문자열 연결 연산자
'My name is ' + 'Lee' 	// "My name is Lee"

// 할당 연산자
var color = 'red';		// "red"

// 비교 연산자
3 > 5	// false

// 논리 연산자
(5 > 3) && (2 < 4) 	// true

// 타입 연산자
typeof 'Hi'	// "string"
</script>
</body>
</html>