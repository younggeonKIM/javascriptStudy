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
	const Url2 = 'https://jsonplaceholder.typicode.com/posts';
	const Data = {

			name: 'Said',
			id:23
	};

	// optional parameters
	const othePram = {

			headers: {

				'content-type':'application/json; charset=UTF-8',
			},
			body: Data,
			method: 'POST',
	};
	
	fetch (Url2, othePram)
	.then(data=>{return data.json()})
	.then(res=>{console.log(res)})
	.catch(error=>console.log(error))
}
</script>
</body>
</html>