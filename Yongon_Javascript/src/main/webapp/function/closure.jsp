<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button class="toggle">toggle</button>
	<div class="box" style="width: 100px; height: 100px; background: red;"></div>
	
	<script type="text/javascript">
		var box = document.querySelector('.box');
		var toggleBtn = document.querySelector('.toggle');

		var toggle = (function() {

			var isShow = false;

			// 1. 클로저를 반환
			return function() {
				box.style.display = isShow ? 'block' : 'none';

				// 3. 상태 변경
				isShow = !isShow;
			};
		})();
		
		// 2. 이벤트 프로퍼티에 클로저를 할당
		toggleBtn.onclick = toggle;
	</script>
</body>
</html>