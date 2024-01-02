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

// argument 프로퍼티
function sum(a, b) {
	console.log(arguments);
	return a + b ;
}
/* 
console.dir(sum); */
sum(10, 2);


// caller 프로퍼티
function deduc(a, b){

	console.log(deduc.caller);
	return a-b;
}
function calculator(x, y){

	let deduc_ = deduc(x, y);
	return deduc_; 
}
calculator(10, 4);		// f calculator(x,y) {...}
deduc(2, 1);				// null -> 브라우저에서 실행했으므로 caller가 없음.

// length 프로퍼티
	// 매개변수 0개
	function func1() {}
	// 매개변수 1개
	function func2(a) {}
	// 매개변수 2개
	function func3(a, b) {}
	
	console.log(func1.length);
	console.log(func2.length);
	console.log(func3.length);

// name 프로퍼티
	// 기명 함수
	function sum2(a, b) {

		return a + b;
	}
	// 익명 함수
	let deduct2 = function(a, b){

		return a-b;
	}
	console.log(sum2.name);	// sum
	console.log(deduct2.name); 	// ES6 이전 -> ''	, ES6 부터 -> deduct

// __proto__ 접근자 프로퍼티
	console.log(Object.prototype);	// {constructor: ƒ, __defineGetter__: ƒ, __defineSetter__: ƒ, hasOwnProperty: ƒ, __lookupGetter__: ƒ, …}
	let obj = {};
	console.log(obj.__proto__);		// {constructor: ƒ, __defineGetter__: ƒ, __defineSetter__: ƒ, hasOwnProperty: ƒ, __lookupGetter__: ƒ, …}
	console.log(Object.prototype === obj.__proto__);		// true
	// Object.prototype 객체에 새 프로퍼티 추가
	Object.prototype.hello = function() {

		console.log('Hi');
	}
	let a = {};
	console.log(a.__proto__.hello);		// f ()	 {console.log('Hi');}

// prototype 프로퍼티
let a2 = {};
let b2 = function() {};
console.log(a2.prototype);		// undefined
console.log(b2.prototype);		// {constructor : f}

function Puppy(name) {
	this.name = name;
}
Puppy.prototype = {
		귀여움 : true
}
let 꾸기 = new Puppy('꾸기');
console.log(꾸기);		// Puppy { name: '꾸기'}
console.log(꾸기.귀여움);			// true
</script>
</body>
</html>