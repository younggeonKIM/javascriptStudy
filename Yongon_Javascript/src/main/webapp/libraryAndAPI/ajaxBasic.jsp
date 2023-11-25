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
// 1. new XMLHttpRequest 오브젝트를 생성
var xhr = new XMLHttpRequest();

// 2. 설정: URL /article/.../load 에 대하여 GET요청
xhr.open('GET', '/article/xmlhttprequest/example/load');

// 3. 네트워크 경유로 요청 송신
xhr.send();

// 4. 반응(리스폰스)를 받은 뒤 호출됨
xhr.onload = function() {

	if(xhr.status != 200) {		// 리스폰스의 HTTP 스테이터스 해석

		alert('Error ${xhr.status}: ${xhr.statusTest}');	// e.g. 404: Not Found
	} else {

		alert('Done, got ${xhr.response.length} bytes');	// responseText is the server
	}
};

xhr.onprogress = function(event) {

	if(event.lengthComputable) {

		alert('Received ${event.loaded} of ${event.total} bytes');
	} else {

		alert('Received ${event.loaded} bytes');	// no Content-Length
	}
};

xhr.onerror = function() {

	alert("Request failed");
};

// [readyState] 를 사용한 조건분기
xhr.onreadystatechange = function() {

	if( xhr.readyState === 4 ){

		}
}


</script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
$(function() {
	$.ajax( { // 실행할 처리 내용
	} );
} );
</body>
</html>