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
	bloodType : "B",
	height : "158cm"
};
const { name, age } = person;
// 프로퍼티의 값으로도 표현 가능하다?
// 또한, 객체에서도 [ ...rest ] 연산자를 사용 가능.
// default 값도 설정 가능하며, 이때는 field명 뒤에 [ = ] 등호 기호를 붙여서 값을 할당.
// 만약 객체에 default 값으로 설정한 프로퍼티가 이미 지정돼 있다면, 이 default 값은 사용되지 않을 것임.
const { bloodType : ygBlood, height='160cm',...rest } = person;
console.log(name, age);		// 영건, 30
console.log(name, ygBlood);	// 영건, B
console.log(height);				// 158cm (이미 객체에 해당 프로퍼티가 정의돼 있어서 default 값 사용되지 않음)
console.log(rest);					// { name : '영건', age : 30}
</script>
</body>
</html>