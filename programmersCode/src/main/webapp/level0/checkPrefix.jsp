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
function solution(my_string, is_prefix) {
	if (my_string.startsWith(is_prefix)) {
        return 1;
    } else {

        var answer = 0;
        return answer;
    }
}
function solution(my_string, is_prefix) {
    return my_string.slice(0, is_prefix.length) === is_prefix ? 1 : 0
}
function solution(my_string, is_prefix) {
	  return +my_string.startsWith(is_prefix);
	}
</script>
</body>
</html>