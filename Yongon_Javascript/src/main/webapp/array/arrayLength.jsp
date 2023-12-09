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

// sparse array(성긴 배열)
let a = new Array(5);	// 요소는 없지만, a.length는 5임.
let a2 = [];								// 요소가 없고 length도 0인 배열
a2[1000	] = 0;				// 요소는 하나를 추가하지만 길이는 1001로 만드는 할당.
console.log(a);
console.log(a2);
let a3 = [,];						// 이 배열은 요소가 없고 길이는 1임.
let a4 = [undefined];		// 이 배열에는 undefined 요소가 하나 있음.
console.log(0 in a3);		// false
console.log(0 in a4);		// true


// 배열 길이
console.log([].length);		// 0 : 배열에 요소가 없음
console.log(["a", "b", "c"].length);		// 3 : 가장 큰 인덱스는 2이고 길이는 3
	// length의 delete 기능
	let a5 = [1,2,3,4,5];		// 요소가 다섯 개인 배열 생성
	console.log(a5);
	a5.length = 3;			// a5는 이제 [1, 2, 3]의 배열이 됨.
	console.log(a5);
	a5.length = 0;			// a5의 요소 전체가 삭제, a는 []임.
	console.log(a5);
	a5.length = 5;			// 길이는 5지만 new Array[5] 와 마찬가지로 요소가 없음.
	console.log(a5);
	let a6 = new Array(5);
	console.log(a6);
</script>
</body>
</html>