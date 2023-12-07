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

// 1. 배열 리터럴
const a = [4, 5, 6];
const b = [1, 2, 3];

	// 배열 리터럴 내부에서 Spread Syntax(스프레드 문법)을 사용해 기존 배열을 활용한 새 배열을 생성 가능.
	const c = [...b, ...a];	// [1, 2, 3, 4, 5, 6]
	console.log(c);

	// Spread Syntax는 이터러블을 대상으로 사용할 수 있으므로, 배열이 아닌 이터러블로 배열을 생성 가능.
	const d = 'Hello world';
	const e = [...d];		
	console.log(e);		// ['H', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd']

// 2. Array 생성자 함수
const a2 = new Array(10);
const b2 = new Array(0);
const c2 = [];
const d2 = [1, 2, 3];
const e2 = new Array();
console.log(Object.getOwnPropertyDescriptors(a2));
console.log(Object.getOwnPropertyDescriptors(b2));
console.log(Object.getOwnPropertyDescriptors(c2));
console.log(Object.getOwnPropertyDescriptors(d2));
console.log(Object.getOwnPropertyDescriptors(e2));

	// 인수를 2개 이상 전달하면 Array.of 메서드와 동일하게 동작함.
	// 즉, 인수들을 요소로 갖는 배열을 생성.
	const a3 = new Array(1, 2, 3);	// [1, 2, 3] 과 동일.
	console.log(Object.getOwnPropertyDescriptors(a3));

	// new 연산자를 사용하지 않고 호출해도 동일하게 동작.
	const b3 = Array(2);		// [], b3.length=2
	const c3 = Array(1,2,3);		// [1, 2, 3]
	console.log(b3);
	console.log(c3);
	
// 3. Array.of 메서드
const a4 = Array.of(1, 2, 'abc', {}); 	// [1, 2, 'abc', {}]
const b4 = Array.of(10);			// [10]
const c4 = new Array(10);		// [], c.length = 10
console.log(a4);
console.log(b4);
console.log(c4);

// 4. Array.from 메서드
const a5 = {length: 3, 0: 1, 1: 2, 2: 3};		// 유사 배열 객체
const b5 = Array.from(a5);		// [1, 2, 3]
const c5 = Array.from('abc');		// ['a', 'b', 'c']
console.log(a5);
console.log(b5);
console.log(c5);
	// 두 번째 인수로 배열 모든 요소에 대해 호출할 콜백 함수,
	// 세 번째 인수로 콜백 함수 내부에서 this에 바인딩할 객체를 전달받을 수 있음.
	const d5 = 'Hello World';
	const e5 = Array.from(d5, v => v.toLowerCase());		// ['h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd']
	console.log(e5);	



// 1 ~ N까지 자연수를 나열한 배열 생성 (규칙적인 수 나열)
	// Array 생성자 함수
	const a6 = [...new Array(10)].map((_, i) => i + 1);
	console.log(a6);			// [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	const a61= new Array(5).map((_, i) => i +1);		// []
	const a62 = [...new Array(5)];		// [ undefined, undefined, undefined, undefined, undefined]
	const a63 = [...new Array(5)].map((_, i) => i+1);	// [1, 2, 3, 4, 5]
	console.log(a61);
	console.log(a62);
	console.log(a63);
		
	
	// Array.from 메서드
	const b6 = Array.from({ length: 10}, (_, i) => i+1);
	console.log(b6);			// [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	const b61 = Array.from({length : 10});		// [undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined]
	console.log(b61);

	// Array 생성자 함수 로 배열 생성하는 방법과 Array.from 메서드로 배열 생성하는 방법 을 실행시간측정해 비교
	console.time('Array 생성자 함수');
	const a7 = [...new Array(1000000)].map((_, i) => i+1);
	console.timeEnd('Array 생성자 함수');

	console.time('Array.from 메서드');
	const b7 = Array.from({length: 1000000}, (_, i) => i+1);
	console.timeEnd('Array.from 메서드');

// 똑같은 요소로 채워진 배열 생성
const a8 = new Array(5).fill(0);	// [0, 0, 0, 0, 0]
const b8 = [1, 2, 3, 4, 5].fill(0);		// [0, 0, 0, 0, 0]
console.log(a8);
console.log(b8);
</script>
</body>
</html>