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
/* 알파벳으로 이루어진 문자열 myString이 주어집니다. 
 모든 알파벳을 소문자로 변환하여 return 하는 solution 함수를 완성해 주세요. 
 */
 function solution(myString){
		var res = myString.toLowerCase();
		return res;
	 }
 console.log(solution('APPle'));

 function solution2(myString) {

	    //아스키코드 이용 a -> 97 A -> 65 : 소문자와 대문자 32 차이가 남

	    var answer = '';
	    var my_splitD = [];

	    var my_split = myString.split('');

	    for(let i = 0; i < my_split.length; i++){
	        if(my_split[i].charCodeAt() < 97){
	            my_splitD[i] = my_split[i].charCodeAt() + 32
	            answer += String.fromCharCode(my_splitD[i]);
	        }else{
	            my_splitD[i] = my_split[i].charCodeAt() 
	            answer += String.fromCharCode(my_splitD[i]);
	        }
	    }

	    console.log(answer);

	    return answer;
	}

 function solution3(myString) {
     var answer = '';

     for(let i = 0; i < myString.length; i ++){

         const pointer = myString[i];

         if(pointer === pointer.toUpperCase()){

                answer += pointer.toLowerCase();

         }else{
             answer += pointer;
         }

     }

     return answer;
 }

 const solution4 = myString => myString.toLowerCase()
 
</script>
</body>
</html>