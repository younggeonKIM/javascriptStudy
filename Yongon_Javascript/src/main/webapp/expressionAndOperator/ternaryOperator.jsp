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
var x = 2;

// x가 짝수이면 '짝수'를 홀수이면 '홀수'를 반환.
// 2 % 2는 0이고 0은 false로 암묵적 타입 변환됨.
var result = x % 2 ? '홀수' : '짝수';

console.log(result);		// 짝수

var y =2 , result2;
if(x % 2) result2 = '홀수';
else			result2 = '짝수';

console.log(result2);	// 짝수
</script>
</body>
</html>