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
var name = "mark";
console.log(name);

var name = "markya";
console.log(name);
/* 
let name= "mark";
let name="markya";	// 'name' has already been declared
 */

/* const name = "mark";
const name = "markya";
console.log(name);	// 'name' has already been declared

name ="markya";
console.log(name);	// Uncaught TypeError : Assignment to constant variable.
 */

 function scope(){
	const a = 0;
	let b = 0;
	var c = 0;
	// {} 중괄호 안에 든 내용이 블록임.
	if (a === 0){ // 코드 블록
		const a = 1;
		let b = 1;
		var c = 1;
		console.log(a, b, c);	// 1, 1, 1
		}
	// var 는 함수 단위라서 if 문 밖에서 선언한 값이 변함.
	// let과 const는 if 문 안쪽 내용이 바깥 내용에 영향을 주지 않음.
	console.log(a, b, c); 	// 0, 0, 1
	
	 }
 scope();
</script>
</body>
</html>