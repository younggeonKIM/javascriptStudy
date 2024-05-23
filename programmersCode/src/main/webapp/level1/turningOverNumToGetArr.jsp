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
alert(solution(12345));

function solution(n) {
    var arr = n.toString().split('');
  // n을 string으로 형변환하고 split으로 하나씩 끊어줌.
    var answer = [];

    for(var i=arr.length-1; i>=0; i--){
        answer.push(Number(arr[i]));
    }
  //arr의 인덱스 역순으로 answer의 배열 안에 넣어준다.
  return answer;
}
</script>
</body>
</html>