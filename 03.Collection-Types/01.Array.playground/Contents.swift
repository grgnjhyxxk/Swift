// 배열의 선언과 생성
var namesArray: Array<String> = ["james", "marry", "jack", "daniel"]
//var namesArray: [String] = ["james", "chulsoo", "younghee", "jack"] // 위의 선언과 똑같은 선언 방법!

print(namesArray.count) // 4
print(namesArray.isEmpty) // false

// 다양한 종류의  빈 배열 선언
var emptyArray_1: [Any] = [Any]()
var emptyArray_2: [Any] = Array<Any>()
var emptyArray_3: [Any] = []
var emptyArray_4: Array<String> = []
var emptyArray_5: Array<String> = [String]()
var emptyArray_6: Array<String> = Array<String>()
var emptyArray_7: [String] = []
var emptyArray_8: [String] = [String]()
var emptyArray_9: [String] = Array<String>()

print(emptyArray_4.isEmpty)    // true
print(emptyArray_5.isEmpty)    // true
print(emptyArray_6.isEmpty)    // true
print(emptyArray_7.isEmpty)    // true
print(emptyArray_8.isEmpty)    // true
print(emptyArray_9.isEmpty)    // true

// 배열의 사용
print(namesArray[2])     // jack
namesArray[2] = "jenny"
print(namesArray[2])     // jenny

// append
namesArray.append("elsa")    // 마지막에 elsa가 추가됩니다.
namesArray.append(contentsOf: ["john", "max"]) // 맨 마지막에 john과 max가 추가됩니다.

print(namesArray)
// ["james", "marry", "jenny", "daniel", "elsa", "john", "max"]

// insert
namesArray.insert("clyde", at: 2)
namesArray.insert(contentsOf: ["jihyo", "frank"], at: 5)

print(namesArray)
// ["james", "marry", "clyde", "jenny", "daniel", "jihyo", "frank", "elsa", "john", "max"]

print(namesArray.firstIndex(of: "james")) // 0
print(namesArray.firstIndex(of: "thor"))  // nil

print(namesArray.first)  // james
print(namesArray.last)   // max

let firstItem: String = namesArray.removeFirst()
let lastItem: String = namesArray.removeLast()
let indexZeroItem: String = namesArray.remove(at: 0)

print(firstItem)        // james
print(lastItem)         // max
print(indexZeroItem)    // chulsoo
