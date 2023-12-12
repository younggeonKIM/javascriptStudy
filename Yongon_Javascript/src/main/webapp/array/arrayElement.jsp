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
// Array.push()
	var arr = ['a', 'b', 'c'];

	// arr = ['a', 'b' , 'c', 'd']
	arr.push('d');	// 배열의 끝에 요소를 추가
	console.log(arr);

// Array.unshift()
	var arr2 = ['a', 'b', 'c'];

	// arr2 = ['d', 'a', 'b', 'c']
	arr2.unshift('d');	// 배열의 앞쪽에 요소를 추가
	console.log(arr2);

// Array.splice("위치", 0, ["요소1", "요소2", ...])
	var arr3 = ['a', 'b', 'c'];

	// arr3 = ['a', 'b', 'd', 'c']
	arr3.splice(2, 0, 'd');	// 배열의 인덱스 2 위치에 0개의 요소를 삭제하고 'd' 요소를 추가
	console.log(arr3);

	// arr3 = ['a', 'b', 'd', 'c', 'e', 'f']
	arr3.splice(4,0, 'e', 'f');	// index 4의 위치에 2개의 요소 ('e', 'f')를 추가
	console.log(arr3);

// Array.pop()
	var arr4 = ['a', 'b', 'c', 'd', 'e'];

	// arr4 = ['a', 'b', 'c', 'd']
	arr4.pop();		// 배열의 마지막 요소를 제거
	console.log(arr4);
	
	// arr4 = ['a', 'b', 'c']
	var popped = arr4.pop();	// 제거한 요소를 반환받을 수 있음.
	console.log(arr4);
	console.log(popped);		// d

// Array.shift()
	var arr5 = ['a', 'b', 'c','d', 'e'];

	// arr5 = ['b', 'c', 'd', 'e']
	arr5.shift();		// 배열의 첫 번째 요소를 제거
	console.log(arr5);
	
	// arr5 = ['c', 'd', 'e']
	var shifted = arr5.shift();	// 제거한 요소를 반환받을 수 있음.
	console.log(arr5);
	console.log(shifted);		// b

// Array.splice()
	var arr6 =['a', 'b', 'c', 'd', 'e'];

	// arr6=['a', 'b', 'd', 'e']
	arr6.splice(2, 1);		// index 2 위치부터 1개의 요소('c') 를 제거
	console.log(arr6);
	
	// arr6 =['a', 'e']
	arr6.splice(1, 2);		// index 1 위치부터 2개의 요소('b', 'e') 를 제거
	console.log(arr6);
	
	// arr6 = ['a']
	var removed = arr6.splice(1, 1);		// 제거한 요소를 반환받을 수 있음.
	console.log(arr6);
	console.log(removed);	// e


</script>
</body>
</html>