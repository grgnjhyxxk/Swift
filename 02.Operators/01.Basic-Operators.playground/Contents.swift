// 할당 연산자
var a: Int = 0
var b: Int = 3

a = b // a == 3

// 산술 연산자
a = 2
b = 1

a + b // 3
a - b // 1
a * b // 2
a / b // 2
a % b // 0

// 비교 연산자
// a는 2, b는 1일 때
a == b  // false
a >= b  // true
a <= b  // false
a > b   // true
a < b   // false
a != b  // true
a ~= b  // false , 패턴 매치 (A와 B의 패턴이 매치되는지 확인하여 불리언 값을 반환합니다.

let valueA: Int = 3
let valueB: Int = 5
let valueC: Int = 5

// 복합 할당 연산자
var CompoundAssignmentA = 5
var CompoundAssignmentB = 10

// A += B : A와 B의 합을 A에 할당합니다. (A = A + B와 같은 표현)
CompoundAssignmentA += CompoundAssignmentB  // 15

// A -= B : A에서 B를 뺀 결과를 A에 할당합니다. (A = A - B와 같은 표현)
CompoundAssignmentA -= CompoundAssignmentB  // 5

// A *= B : A와 B를 곱한 결과를 A에 할당합니다. (A = A * B와 같은 표현)
CompoundAssignmentA *= CompoundAssignmentB  // 50

// A /= B : A를 B로 나눈 몫을 A에 할당합니다. (A = A / B와 같은 표현)
CompoundAssignmentA /= CompoundAssignmentB  // 5

// A %= B : A를 B로 나눈 나머지를 A에 할당합니다. (A = A % B와 같은 표현)
CompoundAssignmentA %= CompoundAssignmentB  // 5

// A <<= B : A의 비트를 B만큼 왼쪽으로 시프트한 결과를 A에 할당합니다. (A = A << B와 같은 표현)
CompoundAssignmentA <<= CompoundAssignmentB  // 5,120

// A >>= B : A의 비트를 B만큼 오른쪽으로 시프트한 결과를 A에 할당합니다. (A = A >> B와 같은 표현)
CompoundAssignmentA >>= CompoundAssignmentB  // 5

// A &= B : A와 B의 비트 AND 연산을 수행한 결과를 A에 할당합니다. (A = A & B와 같은 표현)
CompoundAssignmentA &= CompoundAssignmentB  // 0

// A |= B : A와 B의 비트 OR 연산을 수행한 결과를 A에 할당합니다. (A = A | B와 같은 표현)
CompoundAssignmentA |= CompoundAssignmentB  // 10

// A ^= B : A와 B의 비트 XOR 연산을 수행한 결과를 A에 할당합니다. (A = A ^ B와 같은 표현)
CompoundAssignmentA ^= CompoundAssignmentB  // 0

// 참조 비교 연산자
class Person {
    var name: String

    init(name: String) {
        self.name = name
    }
}

let person1 = Person(name: "John")
let person2 = Person(name: "John")

if person1 === person2 {
    print("person1 and person2 are the same instance")
} else {
    print("person1 and person2 are different instances")
}



