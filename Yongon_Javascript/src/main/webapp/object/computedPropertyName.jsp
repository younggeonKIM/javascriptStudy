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

var prefix = 'prop';
var i = 0;

// ES5
var obj = {};
obj[prefix + '-' + ++i] = i;
obj[prefix + '-' + ++i] = i;
obj[prefix + '-' + ++i] = i;
console.log();		// { prop-1: 1, prop-2: 2, prop-3: 3 }

// ES6
/* var obj2 ={
		[`${prefix}-${++i}`]: i,
		[`${prefix}-${++i}`]: i,
		[`${prefix}-${++i}`]: i
}
console.log(obj2);	// { prop-1: 1, prop-2: 2, prop-3: 3 } */
</script>
</body>
</html>