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

// ES5
var obj = {
		name: 'Lee',
		sayHi: function() {

			console.log('Hi! ' + this.name);
		}
};
obj.sayHi();		// Hi! Lee

// ES6
var obj2 = {
		name: 'Kim',
		sayHi() {

			console.log('Hi! ' + this.name);
		}
};
obj2.sayHi();	// Hi! Kim
</script>
</body>
</html>