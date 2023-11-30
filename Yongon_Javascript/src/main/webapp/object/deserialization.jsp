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

var deserialize_object = JSON.parse(serialize_json);
console.log("Deserialize 결과 타입 : ", typeof deserialize_object);
console.log("Deserialize 결과 : ", deserialize_object);
</script>
</body>
</html>