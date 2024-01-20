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
{
	const Url = 'https://jsonplaceholder.typicode.com/posts';
	
	fetch(Url)
	.then(data=>{return data.json()})
	.then(res=>{console.log(res)})
}


</script>
</body>
</html>