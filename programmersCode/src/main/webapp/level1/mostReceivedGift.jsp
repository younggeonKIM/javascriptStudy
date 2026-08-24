<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--258712  -->
<!--  가장 많이 받은 선물-->

</body>
<script type="text/javascript">
int solution(const friends[], int friends_len, const gifts[], int gifts_len) {
	
	int answer = 0;
	// 선물을 준 친구와 선물을 준 횟수를 키와 값의 쌍인 객체로 저장하는 배열
	const giftingArr = [
		
	]
	for(let friend : friends){

		for(let gift : gifts){

			let gifting = gift.split(" ")
			if(friend === gifting.[0]){

				giftingArr.add({ name : friend, giftNum : ++ })
			}
		}
		
		
	}
    return answer;
}
</script>
</html>