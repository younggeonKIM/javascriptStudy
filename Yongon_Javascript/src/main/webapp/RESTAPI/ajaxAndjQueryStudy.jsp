<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button type="button" id="btn" class="btn">누르세요.</button>

<script type="text/javascript" >

$(document).ready(function(){

	const Url = 'https://jsonplaceholder.typicode.com/posts';
	$('.btn').click(function(){

		$.ajax({
			url: Url,
			type:"GET",
			success: function(result){

				console.log(result);
			},
			error:function(error){

				console.log(`Error ${error}`)
			}
		})
	})
	$('.btn').click(function(){

		$.get(Url, function(data, status){

			console.log(`${data}`)
		});
	})
})

</script>
</body>
</html>