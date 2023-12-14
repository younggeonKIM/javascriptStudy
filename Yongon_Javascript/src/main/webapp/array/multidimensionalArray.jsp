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

let array = [
	[101, 102, 103], 
	[201, 202, 203],
	[301, 302, 303],
];
console.log(array);		// [ [101, 102, 103], [201, 202, 203], [301, 302, 303] ]
console.log(array[0]);		// [ 101, 102, 103 ]
console.log(array[1] [0]);		// 201
console.log(array[2] [2]);		// 303

console.log(array.length);		// 3

let pop = array.pop();
console.log(array.length);		// 2
console.log(pop);			// [301, 302, 303]
console.log("pop 함수 실행 후 :");
console.log(array);			// [ [ 101, 102, 103 ], [ 201, 202, 203 ] ]

console.log(array.length);		// 2

let push = array.push([401, 402, 403]);
console.log(array.length);		// 3
console.log(push);					// 3
console.log(array);			// [ [ 101, 102, 103 ], [ 201, 202, 203 ], [ 401, 402, 403 ] ]

</script>
</body>
</html>