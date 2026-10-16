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
const shouldRun = true;
function logWorld(){
	if(shouldRun){
		console.log('Hello world'	);
	}
}
logWorld();								// Hello world

// [ short circuit evaluation ] 문법을 사용하면, 위의 flag 판별과 그에 따른 조건부 함수 실행을 더 간결하고 간단하게 사용할 수 있음.
// 간단하게 &연산자를 생각해보면 됨.
// 왼쪽에서부터 계산하며, 왼쪽의 shouldRun 변수가 false라면 &&연산에 의해 오른쪽 값은 볼 필요도 없이 false가 되버림.
shouldRun && logWorld();		// Hello world

</script>
</body>
</html>