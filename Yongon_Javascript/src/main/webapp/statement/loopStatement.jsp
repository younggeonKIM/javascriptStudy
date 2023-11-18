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

// while
	{
let count =0;
while (count < 10) {
		console.log(count);
		count++;
	}
}

// do while
	{
function printArray(a) {

	let len = a.length, i = 0;
	if(len===0){
		
		console.log("Empty Array");
	} else {

		do {

			console.log(a[i]);
		} while (++i < len) 
	}
}
printArray(new Array(4));

	}

// for
{
	for (let count = 0; count < 10; count++){

		console.log(count);
	}

	// 아래와 같은 형태도 가능
	let i, j, sum = 0;
	for(i = 0, j=0; i<10; i++, j--){

		sum += i * j;
	}

	// 연결된 리스트 obj의 마지막을 반환
	function tail(obj) {

		// obj.next가 true 값이면 반복
		for ( ; obj.next ; obj = obj.next)	/* 비움 */ ;
		return obj;

	}
	var newList =[['2', '3'], ['4', '5']];
	console.log(tail(newList));
}

{
	
// 배열
let data = [1,2,3,4,5,6,7,8,9], sum =0;
for(let element of data){

	sum += element;
}
console.log(sum);

// 객체는 사용 불가하지만, keys, values, entries 을 통해 사용 가능
let obj = {x:1, y:2, z:3};
let keys="";
for(let k of Object.keys(obj)){

	keys += k;
}
console.log(keys);

let sum2 = 0;
for(let v of Object.values(obj)){

	sum2 += v;
}
console.log(sum2);

let pairs = "";
for (let [k, v] of Object.entries(obj)){

	pairs += k + v;
}
console.log(pairs);

// 문자열 사용법
let frequency = {};
for(let letter of "mississippi"){

	if(frequency[letter]) {

		frequency[letter]++;
	} else {

		frequency[letter] = 1; 
	}
}
console.log(frequency);

// 세트
let text = "Na na na na na na na na Batman!";
let wordSet = new Set(text.split(" "));
let unique = [];
for(let word of wordSet){

	unique.push(word);
}
console.log(unique);

// 맵
let m = new Map([[1, "one"]]);
for (let [key, value] of m){

	console.log(key, value);
}

// for / await를 사용한 비동기 순회
async function printStream(stream){

	for await(let chunk of stream){

		console.log(chunk);
	}
}

// for/of 와 비슷하지만 이터러블 객체가 아니더라도 사용가능
let obj3 = {x:12, y:13, z:14};
for(let p in obj3){ // obj의 프로퍼티 이름을 변수 p에 할당

	console.log(obj3[p]);		// 각 프로퍼티 값을 출력	
}

let a = [], i =0;
for(a[i++] in obj3) {}		// 객체의 경우 i는 프로퍼티 값이 온다.
// a = ['x', 'y', 'z']
console.log(a);

// 배열 사용할 경우
for(let i in a ) console.log(a[i]);		// 배열의 경우 i는 인덱스 값이 온다.
}
</script>
</body>
</html>