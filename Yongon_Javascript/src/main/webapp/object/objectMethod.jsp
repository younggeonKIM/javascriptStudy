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
// Object.assign()	-> 열거 가능한 속성들을 대상 객체로 복사.

var user ={
		name : "Mike",
		age : 30
}

var cloneUser = user;	// 객체주소 참조값이 복사됨. -> 서로 공유함. 진정한 복사 x

var cloneUser2 = Object.assign({}, user); // 빈 객체는 초기값, 내용을 그대로 복사.
var cloneUser3 = Object.assign({gender : 'male'}, user);	// gender라는 프로퍼티를 추가해서 객체값을 얻음.
																								// {gender : 'male', name: "mike", age : 30}
var cloneUser4 = Object.assign({name: "Tom"}, user);		// 같은 프로퍼티면 덮어씌워짐.

const user2 = {name : "Mike"}
const age_info = { age: 30}
const gender_info = {gender : "male"}
var cloneUser5 = Object.assign(user2, age_info, gender_info);		// 객체 변수를 합칠 수 있음.

console.log(cloneUser);
console.log(cloneUser2);
console.log(cloneUser3);
console.log(cloneUser4);
console.log(cloneUser5);

// Object.entries()	-> [키, 값] 쌍을 담은 배열을 반환.
const user3={
		name : "Mike",
		age : 30,
		gender : "male"
}

console.log(Object.entries(user3));	// [ ["name", "Mike"], ["age", 30], ["gender", "male"] ]

// Object.is()
var test = { a: 1};
console.log(Object.is(test, test));		// true

console.log(Object.is(null, null));		// true
console.log(Object.is([], []));				// false
console.log(Object.is(0, -0));				// false
console.log(Object.is(-0, -0));				// true
console.log(Object.is(NaN, 0/0));		// true

// Object.getPrototypeOf()		-> 명시된 객체의 프로토타입을 반환.
console.log("객체 프로토타입 : "+Object.getPrototypeOf(cloneUser5));
</script>
</body>
</html>