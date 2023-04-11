// Int와 UInt
var integer: Int = -999
var unsignedInteger: UInt = 999
//var unsignedInteger: UInt = -999 // UInt 타입에는 음수값을 할당할 수 없습니다. 따라서 오류가 뜹니다.

print("integer 값은 \(integer)입니다, unsignedInteger의 값은: \(unsignedInteger)입니다.")

// 최대, 최솟값 알아보기
print("Int 최댓값: \(Int.max), Int 최솟값: \(Int.min)")
print("UInt 최댓값: \(UInt.max), UInt 최솟값: \(UInt.min)")

// 다른 비트 형태의 최대값 알아보기
var largeInteger: Int64 = Int64.max
var largeUnsignedInteger: UInt8 = UInt8.max
print("Int64 최댓값 : \(largeInteger), UInt8 최댓값 : \(largeUnsignedInteger)")

// 만약 최댓값을 넘기려 한다면?
//let overMaxInteger = Int.max + 1 // Arithmetic operation '9223372036854775807 + 1' (on type 'Int') results in an overflow
//let overMinInteger = Int.min - 1 // //Arithmetic operation '-9223372036854775808 - 1' (on type 'Int') results in an overflow

//integer = unsignedInteger
// Cannot assign value of type 'UInt' to type 'Int'

// 하지만 타입 변환으로 가능!
integer = Int(unsignedInteger) // 타입 변환으로 가능
print(integer) // 100

// Bool
var boolean_true: Bool = true

boolean_true.toggle() // false 반전
boolean_true          // false로 변경됨
!boolean_true         // 다시 true로 반전

// Float과 Double
var float: Float = 1234567890.1 // Float이 수용할 수 있는 범위를 넘어섭니다.
// 하지만 오류가 발생하진 않습니다. 다만 가능한 범위 외는 잘라내기 때문에 정확도가 떨어집니다.

let double: Double = 1234567890.1 // Double은 수용이 가능합니다.

// Character
let alphabet: Character = "a"
let hand: Character = "👋🏻"
let 한글: Character = "ㅎ"

// String
let name: String = "john"

// 이니셜라이저를 사용하여 빈 문자열을 생성할 수 있습니다.
var hello: String = String()

hello.append("안녕") // append() 메서드를 사용하여 문자열을 이어붙일 수 있습니다.

let helloName = hello + name
print(helloName)    // 안녕john

print(name.count)   // 4
print(hello.isEmpty) // false
