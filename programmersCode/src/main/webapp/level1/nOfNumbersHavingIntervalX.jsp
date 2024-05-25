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
alert(solution(-2, 9)); // -2, -4, -6, -8, -10, -12, -14, -16, -18


function solution(x, n) {
    var answer = [];
    if(x > 0 && x <= 10000000 ){
        
        for(let i = x ; i <= x*n ; i = i+x){
        
            answer.push(i);
        }
    } else if (x < 0 && x >= -10000000){
        
        for(let i = x ; i >= x*n ; i = i+x){
        
            answer.push(i);
        }
    } else {
        
        for (let i = 0; i < n ; i++ ){
            
            answer.push(0);
        }
    }
    return answer;
}
</script>
</body>
</html>