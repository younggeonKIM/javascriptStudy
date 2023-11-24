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

function parents() {

	this.dad = "아빠";
	this.mom = "엄마";
}
	parents.prototype.name = 'Kim';
	var baby = new parents();
// 브라우저 콘솔에 parents 라고 입력.
// parents. 까지 작성해보면 왼쪽과 같이 다양한 메서드
// 들이 나타나고 prototype을 눌러보면? 내가 작성하지
// 않았던 prototype 이 나타남.

// parents에 프로토타입을 이용해 자료를 추가하는 코드.
// 콘솔에 baby와 baby.name을 입력해보면?
// baby에는 name 프로퍼티가 없지만, baby.name에서는
// 확인 가능. 
	// 즉, parents(부모)에 직접 값을 추가하지 않았지만
	// prototype(유전자)에 값을 추가해 baby(자식)에게
	// 물려주었기 때문에 값을 사용 가능.
	

</script>
</body>
</html>