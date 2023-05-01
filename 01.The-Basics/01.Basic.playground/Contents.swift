// 변수와 상수
// 변수 예시
var age = 25
print(age) // 출력 결과: 25

//age = "26" // 오류 발생: Cannot assign value of type 'String' to type 'Int'

// 상수 예시
let name = "John"
print(name) // 출력 결과: John

//name = "Jane" // 오류 발생: Cannot assign to value: 'name' is a 'let' constant

// 콘솔 로그
// 변수 예시
age = 25 // Int형 변수 age를 선언하고 값을 할당합니다.
age += 1 // age 변수에 1을 더한 뒤 값을 다시 할당합니다.

print("My age is \(age)") // My age is 26 출력 - 문자열 보간법을 사용하여 age 변수의 값을 출력합니다.

dump(age)
/*
▿ 26
  - value : 26
*/

// 상수 예시
let pi = 3.141592 // Double형 상수 pi를 선언하고 값을 할당합니다.

print("The value of pi is \(pi)") // The value of pi is 3.141592 출력 - 문자열 보간법을 사용하여 pi 상수의 값을 출력합니다.

dump(pi)
/*
▿ 3.141592
  - some : 3.1415920000000002 // Double 타입의 경우 정확한 값을 표현할 수 없어 some 값을 가집니다.
*/

// 세미콜론
let cat = "🐱"; print(cat)
// Prints "🐱"
