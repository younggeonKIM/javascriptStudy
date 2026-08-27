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
	const giftingMoreArr = [
		
	]
	
	// friends 배열을 순회하며 해당 친구가 어떤 친구에게 선물을 더 많이 줬을 경우 배열에 저장.
	for(let friend : friends){

		// gifts 배열을 순회하며 해당 친구가 어떤 친구에게 선물을 더 많이 줬을 경우 배열에 저장.
		for(let gift : gifts){

			let gifting = gift.split(" ")
			
			if(friend === gifting.[0]){

				if(giftingArr === null){

					giftingArr.add({ name : friend, giftNum : 1 })
				} else {

					for(let obj : giftingArr){

						if ( friend !== obj.name) {

							continue;
						}
						obj.giftNum++;
					}
				}
				
				
			}
		}
	}
    return answer;
}
</script>
</html>