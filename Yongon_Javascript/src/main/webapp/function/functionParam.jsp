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

// Premitive parameter
function log(message) {
	console.log(message);
}
console.log('hello world');

// Object parameter
function changeName(obj){
	obj.name = 'coder';
}
const axce = {name: 'axce'};
changeName(axce);
console.log(axce);


// default parameters
function showMessage(message, from) {
	console.log(`${message} by ${from}`);
}
showMessage('Hi');

function showMessage2(message, from = '영건') {
	console.log(`${message} by ${from}`);
}
showMessage2('Hi');

// Rest parameters
function printAll(...args) {
	for (let i = 0 ; i < args.length ; i ++) {
		console.log(args[i]);
	}
}
console.log(printAll('Monkey', 'D', 'Luffy'));
</script>
</body>
</html>