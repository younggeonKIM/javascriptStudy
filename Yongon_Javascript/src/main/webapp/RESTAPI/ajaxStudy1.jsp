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

///<summary>
// Ajax로 HTTP 호출을 요청
///</summary>
	const Http = new XMLHttpRequest();
	const url = 'https://jsonplaceholder.typicode.com/posts';
	Http.open("GET", url);
	Http.send();

///<summary>
// readystatechanged 이벤트가 발생했을 때 호출한 이벤트 핸들러를 포함한 XMLHttpRequeest.onreadystatechange 속성을 사용
///</summary>
	Http.onreadystatechange=(e)=> {
	
		console.log(Http.responseText);
	}


///<summary>
// readyState와 status 속성으로 요청 완료 판단
///</summary>
	Http.onreadystatechange=function() {

		if(this.readyState==4 && this.status==200){

			console.log(Http.responseText);
		}
	}
	
</script>
</body>
</html>