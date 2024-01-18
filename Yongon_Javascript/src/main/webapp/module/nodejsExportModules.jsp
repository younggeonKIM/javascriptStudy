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
	let count = 0
	function increase() {

		count++
	}
	function getCount() {

		return count
	}
	// 모듈 내보내기
	module.exports.getCount = getCount;
	module.exports.increase = increase;

	// 같은 형식
	module.exports = {

			getCount: getCount
	};
	console.log(module);
}

</script>
</body>
</html>