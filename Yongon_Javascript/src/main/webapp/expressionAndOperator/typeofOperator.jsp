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
console.log(typeof '');				// "string"
console.log(typeof 1);				// "number"
console.log(typeof NaN);		// "number"
console.log(typeof true);			// "boolean"
console.log(typeof undefined);			// "undefined"
console.log(typeof Symbol());			// "symbol"
console.log(typeof null);					// "object"
console.log(typeof []);						// "object"
console.log(typeof {});						// "object"
console.log(typeof new Date());		// "object"
console.log(typeof /test/gi);				// "object"
console.log(typeof function() {});	// "function"

var foo = null;
console.log(typeof foo === null); 		// false
console.log(foo === null); 					// true
</script>
</body>
</html>