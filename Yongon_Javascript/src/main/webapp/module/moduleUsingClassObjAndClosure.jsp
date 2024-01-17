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
// 즉시 실행함수 형태
const BitSet = (function() {

	// 비공개 세부 사항
	function isValid(set, n) {}
	function has(set, byte, bit) {}
	const BITS = new Uint8Array([1, 2, 4, 8, 16, 32, 64, 128]);
	const MASKS = new Uint8Array([~1, ~2, ~4, ~8, ~16, ~32, ~64, ~128]);

	// 모듈의 공개 API
	return class BitSet extends AbstractWritableSet {

		// 생략
	};
})

// 클로저를 사용하는 모듈화
const modules = {};
function require(moduleName) {return modules[moduleName];}

modules["sets.js"] = (function() {

	const exports = {};

	exports.BitSet = class BitSet{};

	return exports;
})

modules["stats.js"] = (function() {

	const exports = {};

	const sum = (x, y) => x + y;
	const square = x => x * x;
	exports.mean = function(data) {};
	exports.stddev = function(data) {};

	return exports;
})


// import() 와 동적 가져오기
import('./stats.js').then(stats => {
  const average = stats.mean(data);
});

async analyzeData(data) {
  const stats = await import('./stats.js');
  return {
    average: stats.mean(data),
    stddev: stats.stddev(data)
  }
}
</script>
</body>
</html>