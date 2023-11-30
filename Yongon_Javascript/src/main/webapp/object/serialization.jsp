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

var geon = {
		name : 'geon',
		age : 27,
		gender : 'male',
		location : 'Incheon',
		marriage : false,
		friends : ['Kim', 'Lee', 'Park']
};

var serialize_json = JSON.stringify(geon);

console.log("Serialize 결과 타입 : ", typeof serialize_json);
console.log("Serialize 결과 : ", serialize_json);
</script>
</body>
</html>