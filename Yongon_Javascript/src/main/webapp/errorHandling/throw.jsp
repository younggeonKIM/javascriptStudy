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
try {
	throw new Error('Oh no!!!');			// Uncaught Error: Oh no!!!

	
	
} catch (error){

	console.log(error);								// Error: Oh no!!!
}

throw 'Oh no';									// Uncaught Error: Oh no
console.log('here');
</script>
</body>
</html>