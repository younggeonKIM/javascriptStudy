<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src='https://unpkg.com/axios/dist/axios.min.js'></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">

const Url = 'https://jsonplaceholder.typicode.com/posts';
axios.get(Url)
.then(data=>console.log(data))
.catch(err=>console.log(err))

// With parameter

const Url2 = 'https://jsonplaceholder.typicode.com/posts';
const params={

		name: "Said",
		id: 21
}
axios.get(Url2, params)
.then(data=>console.log(data))
.catch(err=>console.log(err))
</script>
</body>
</html>