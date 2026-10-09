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
/* const arr = [1, 2, 3, 4];

const doubled = arr.map(double);

function double(num){
	return num*2;
}
console.log(doubled); */



/* // 위 코드들을 간략하게 최소화할 수 있음.
const arr = [1, 2, 3, 4];

// 익명 함수를 사용하면 함수 이름을 굳이 명시하지 않아도 실행 결과가 같음.
const doubled = arr.map(function (num){
	return num*2;
});

console.log(doubled); */


/* // 익명 함수 선언 방식보다 더 새로운 화살표 함수 (arrow function) 선언 방식
const arr = [1, 2, 3, 4];

// 화살표 함수 선언 방식은 function 키워드와 익명 함수의 특징인 함수 이름까지 생략할 수 있는 새롭고 강력한 문법임.
const doubled = arr.map((num) => {
	return num*2;
});

console.log(doubled); */


/* // 화살표 함수 선언 방식에서 더 나아가 단일 행에 단일 표현식의 경우에 [ {} ] 와 [ return ] 키워드 그리고 [ ; ] (세미콜론) 까지 생략할 수 있음.
const arr = [1, 2, 3, 4];


const doubled = arr.map((num) =>  num*2);
console.log(doubled); */

// 마지막으로 파라미터가 0개도 아니고 2개도 아니고 딱 정확히 1개인 경우에 [ () ] 파라미터를 의미하는 괄호도 생략할 수 있음.
const arr = [1, 2, 3, 4];

// 이렇게 하면 매우 직관적이고도 간결한 코드로 변모해 있음을 알 수 있음.
const doubled = arr.map(num =>  num*2);
console.log(doubled); 
</script>
</body>
</html>