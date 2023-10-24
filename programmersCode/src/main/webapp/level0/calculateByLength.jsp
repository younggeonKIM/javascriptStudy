<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><!-- 
정수가 담긴 리스트 num_list가 주어질 때, 
리스트의 길이가 11 이상이면 리스트에 있는 모든 
원소의 합을 10 이하이면 모든 원소의 곱을 return하도록 
solution 함수를 완성해주세요. -->
<script type="text/javascript">
const solution=n=>n.reduce((a,v)=>n.length>10?a+v:a*v)


function solution(num_list) {
    var sum=0;
    var mul=1;
    if(num_list.length > 10){

        for(var i = 0; i< num_list.length ; i++){
            sum=sum+num_list[i];
        }
        return sum;
    } else {

        for(var i = 0; i <num_list.length; i++){
            mul=mul*num_list[i];
        }
        return mul;
    }
}
</script>
</body>
</html>