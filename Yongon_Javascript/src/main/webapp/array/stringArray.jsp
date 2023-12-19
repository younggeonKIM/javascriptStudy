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
// 문자열과 문자 배열은 특정 문자에 접근할 때 배열처럼 a[1]을 사용
	// 모두 유효한 것은 아님.
	const str = "foo";
	const arr = ["f","o","o"];

	console.log(str[1]);		// "o"
	console.log(arr[1]);		// "o"

// 대부분 배열 메서드는 원래 기존의 배열 값을 변경하지만, 문자열은 변경하지 않음.
	
	const bigStr = str.toUpperCase();
	console.log(str);		// "foo"
	console.log(bigStr);		// "FOO"

	arr.push("!");
	console.log(arr);		//	["f", "o", "o", "!"]	(원래 값이 변함)

// 문자열을 배열로 바꾸고 원하는 작업 수행 후 문자열로 다시 되돌림.
	const reverseStr = str
		// str을 배열로 분해
		.split("")
		// 문자 배열의 순서를 거꾸로 뒤집음
		.reverse()
		// 문자 배열을 합쳐 다시 문자열로 만듬
		.join("");
	console.log(reverseStr);		// oof
</script>
</body>
</html>