// 범위 연산자
var array: Array = [1, 2, 3, 4, 5]
var rangeA: Int = 0
var rangeB: Int = 4
var rangeC: Int = 3

// 폐쇄 범위 연산자 (A...B) : A와 B를 까지의 수를 묶어 범위를 표현합니다. A와 B를 포함합니다.
print(array[rangeA...rangeB]) // [1, 2, 3, 4, 5]

// 반 폐쇄 범위 연산자 (A.. <B) : A부터 B 미만까지의 수를 묶어 범위를 표현합니다. A만 포함합니다.
print(array[rangeA..<rangeB]) // [1, 2, 3, 4]

// 단 반향 범위 연산자
// A... : A 이상의 수를 묶어 범위를 표현합니다. A를 표함합니다.
print(array[rangeC...]) // [4, 5]

// ...A : A 이하의 수를 묶어 범위를 표현합니다. A를 표함합니다.
print(array[...rangeC]) // [1, 2, 3, 4]

// ..<A : A 미만의 수를 묶어 범위를 표현합니다. A를 표함하지 않습니다.
print(array[..<rangeC]) // [1, 2, 3]
