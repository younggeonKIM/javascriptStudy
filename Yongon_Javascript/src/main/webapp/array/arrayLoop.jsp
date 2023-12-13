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

// Array.prototype.forEach()
const array1 = ['a', 'b', 'c'];
array1.forEach((element) => console.log(element));
	// Expected output: "a"
	// Expected output: "b"
	// Expected output: "c"
	
	// 모든 원소의 값에서 -5씩 감소시키기
	let date = [10, 15, 20, 25, 30];
	let result = [];
	
	date.forEach( x=> {
		result.push( x-5 )
	});
		// 결과 출력
		console.log(result);		
		// Expected output: [5, 10, 15, 20, 25]

// map
let data = [10, 15, 20, 25, 30];

	// 모든 원소의 값에서 -5씩 감소 후 새 배열 반환
	result = data.map( x => {

		return x -5 
	});

		// 결과 출력
		console.log(result);

// filter
let data2 = [
	{name: "jack", age: 20},
	{name: "kevin", age: 16},
	{name: "rick", age: 27},
	{name: "marry", age: 21},
	{name: "rilly", age: 19},
]
	// age가 20 이상인 원소 추출(필터링)
	result = data2.filter( x => {

		return x.age >= 20
	});

		// 결과 출력
		console.log(result);

// every	-> 성능을 위해 조건 만족하지 않는 값 발견되면 즉시 순회 중단.(Return false)

	// 배열 내부 객체를 순회 -> age >= 20 검사
	// 내부 원소 모두 만족해야 True 출력
	result = data2.every( x => {

		return x.age >= 20 
	});
		// 결과 출력
		console.log(result);		// false

// some	-> 성능을 위해 조건 만족하는 값 발견되면 그 즉시 순회 중단. (Return True)

	// 배열 내부 객체를 순회 -> age >= 20 검사
	// 내부 원소 한 개라도 만족하면 True 출력
	result = data2.some( x => {

		return x.age >= 20
	});
		// 결과 출력
		console.log(result);		// true
</script>
</body>
</html>