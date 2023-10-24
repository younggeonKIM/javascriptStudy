<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 어떤 문자열에 대해서 접두사는 특정 인덱스까지의 문자열을 의미합니다. 예를 들어, "banana"의 모든 접두사는 "b", "ba", "ban", "bana", "banan", "banana"입니다. 
문자열 my_string과 is_prefix가 주어질 때, is_prefix가 my_string의 접두사라면 1을, 아니면 0을 return하는 solution 함수를 작성해 주세요. 
 -->
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