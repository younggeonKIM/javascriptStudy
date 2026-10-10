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
/* // 보통 이렇게 배열의 요소를 출력할 수 있다.
const arr = [1, 2, 3, 4];
const first = arr[0];
const second = arr[1];
console.log(first, second); */


/* // 하지만, 이렇게 하면 더 간략하다.
const arr = [1, 2, 3, 4];
// [ ...rest ] 연산자를 사용하면, 배열 일부분을 제외한 나머지 배열 요소들을 표현할 수 있음.
const [first, second, ...rest] = arr;
console.log(first, second); 
console.log(rest); */


// 객체도 위에서 배열을 저장한 것과 같은 문법으로 표현하고 출력할 수 있음.
const person = {
	name : "영건",
	age : 30,
	bloodType : "B"	
};
const { name, age } = person;
// 프로퍼티의 값으로도 표현 가능하다?
// 또한, 객체에서도 [ ...rest ] 연산자를 사용 가능.
const { bloodType : ygBlood, ...rest } = person;
console.log(name, age);
console.log(name, ygBlood);
console.log(rest);
</script>
</body>
</html>