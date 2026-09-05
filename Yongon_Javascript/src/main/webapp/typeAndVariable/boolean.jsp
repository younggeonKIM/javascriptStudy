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
console.log(Boolean(''));	// false
console.log(Boolean(undefined));	// false
console.log(Boolean(0));	// false
console.log(Boolean(-0));	// false
console.log(Boolean(NaN));	// false

// 추가된 falsy 값
console.log("여기서 부터 새로 추가된 falsy 값들 입니다 : ");
console.log(Boolean(null));	// false
console.log(Boolean());	// false
console.log(Boolean(""));	// false
console.log(Boolean(0n));	// false

// false 일 것 같지만 ture인 값들
console.log("위의 8가지 정도되는 falsy 이외의 값들은 모두 true입니다. ");
console.log(Boolean([]));	// true
console.log(Boolean({}));	// true

// 문자열 'true', 'false' 처리
console.log("문자열 true : "+Boolean('true'));		// true
console.log("문자열 false : "+Boolean('false'));		// false

console.log("JSON parse로 true 처리 : "+JSON.parse('true'));		// true
console.log("JSON parse로 false 처리 : "+JSON.parse('false'));		// false

// TRUE, True 등은 javascript 상에서 아예 정의되지 않은 존재하지 않는 값임.
// boolean 값에는 무조건 소문자인 true 나 false 만 사용해야.
const bool = true;
if(bool){
	console.log("bool 변수는 true 값입니다. " +bool);
} else {
	console.log("bool 변수는 false 값입니다. " +bool);
}

</script>
</body>
</html>