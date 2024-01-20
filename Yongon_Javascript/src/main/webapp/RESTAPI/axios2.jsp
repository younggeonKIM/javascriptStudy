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
const user={

		name: "Said",
		id: 21
}
axios({

	method: 'post',
	url: Url,
	data: {

		user
	}
})
.then(data=>console.log(data))
.catch(err=>console.log(err))

</script>
</body>
</html>