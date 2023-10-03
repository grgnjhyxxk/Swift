// 기본적인 함수의 정의와 호출

//func 함수 이름(매개변수...) -> 반환 타입 {
//    실행 구문
//    return 반환 값
//}

// 기본 형태의 함수 정의와 사용
func hello(name: String) -> String {
    return "Hello \(name)!"
}

let helloJenny: String = hello(name: "Jenny")
print(helloJenny)

func introduce(name: String) -> String {
    "제 이름은" + name + "입니다"
}

// 매개변수가 없는 함수와 매개변수가 여러 개인 함수의 정의와 사용
func helloWorld() -> String {
    return "hello, world"
}

print(helloWorld())

func sayHello(myName: String, yourName: String) -> String {
    return "Hello \(yourName)! I'm \(myName)"
}

print(sayHello(myName: "Hyeok", yourName: "Jenny"))

// 매개변수 이름과 전달인자 레이블을 가지는 함수 정의와 사용
func sayHello(from myName: String, to yourName: String) -> String {
    return "Hello \(yourName)! I'm \(myName)"
}

print(sayHello(from: "Hyeok", to: "Jenny"))

// 전달인자 레이블이 없는 함수 정의와 사용
func sayHello(_ myName: String, _ yourName: String) -> String {
    return "Hello \(yourName)! I'm \(myName)"
}

print(sayHello("Hyeok", "Jenny"))

// 매개변수 기본값이 있는 함수의 정의와 사용
func sayHello(_ name: String, times: Int = 3) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    
    return result
}

print(sayHello("Hyeok"))

print(sayHello("Hyeok", times: 2))

// 가변 매개변수를 가지는 함수의 정의와 사용
func sayhelloToFriends(me: String, friends names: String...) -> String {
    var result: String = ""
    
    for friend in names {
        result += "Hello \(friend)!" + " "
    }
    
    result += "I'm " + me + "!"
    return result
}

print(sayhelloToFriends(me: "Hyeok", friends: "Yong", "Sub", "Yeon"))

print(sayhelloToFriends(me: "Hyeok"))

// inout 매개변수의 활용
var numbers: [Int] = [1, 2, 3]

func nonReferenceParameter(_ arr: [Int]) {
    var copiedArr: [Int] = arr
    copiedArr[1] = 1
}

func referenceParameter(_ arr: inout [Int]) {
    arr[1] = 1
}


nonReferenceParameter(numbers)
print(numbers[1])

referenceParameter(&numbers)
print(numbers)

// 반환 값이 없는 함수의 정의와 사용
func sayHelloWorld() {
    print("Hello, world...!")
}

sayHelloWorld()

func sayHellooo(from myName: String, to name: String) {
    print("Hello \(name)! I'm \(myName)")
}

sayHellooo(from: "Hyeok", to: "Yeon")

func sayGoodbye() -> Void {
    print("Good bye")
}

sayGoodbye()

// 함수 타입의 사용
typealias CalcuateTwoints = (Int, Int) -> Int

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: CalcuateTwoints = addTwoInts

print(mathFunction(1, 2))

mathFunction = multiplyTwoInts

print(mathFunction(1, 2))

// 전달인자로 함수를 전달받는 함수
func printMathResult(_ mathFunction: CalcuateTwoints, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a+3, b+2))")
}

printMathResult(addTwoInts, 1, 2)

// 특정 조건에 따라 적절한 함수를 반환해주는 함수
func chooseMathFunction(_ toAdd: Bool) -> CalcuateTwoints {
    return toAdd ? addTwoInts : multiplyTwoInts
}

printMathResult(chooseMathFunction(true), 1, 100)

// 원점으로 이동하기 위한 함수
//typealias MoveFunc = (Int) -> Int
//
//func goRight(_ currentPosition: Int) -> Int {
//    return currentPosition + 1
//}
//
//func goLeft(_ currentPosition: Int) -> Int {
//    return currentPosition - 1
//}
//
//func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc {
//    return shouldGoLeft ? goLeft : goRight
//}
//
//var position: Int = 3
//
//let moveToZero: MoveFunc = functionForMove(position > 0)
//print("Go to the Zero point")
//
//while position != 0 {
//    print("Current position is \(position)")
//    position = moveToZero(position)
//}
//
//print("We are get the point")

// 중첩 함수의 사용
typealias MoveFunc = (Int) -> Int

func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc {
    func goRight(_ currentPosition: Int) -> Int {
        return currentPosition + 1
    }

    func goLeft(_ currentPosition: Int) -> Int {
        return currentPosition - 1
    }
    
    return shouldGoLeft ? goLeft : goRight
}

var position: Int = -6

let moveToZero: MoveFunc = functionForMove(position > 0)
print("Go to the Zero point")

while position != 0 {
    print("Current position is \(position)")
    position = moveToZero(position)
}

print("We are get the point")

// 비반환 함수의 정의와 사용
func crashAndBurn() -> Never {
    fatalError("Something very, very bad happened")
}

//crashAndBurn() // 프로세스 종료 후 오류 보고

func someFunction(isAllIsWell: Bool) {
    guard isAllIsWell else {
        print("Matrix is Falling")
        crashAndBurn()
    }
    print("The Matrix is functioning properly")
}

someFunction(isAllIsWell: true)
//someFunction(isAllIsWell: false)

// @discardableResult 선언 속성 사용
func something(_ something: String) -> String {
    print(something)
    return something
}

@discardableResult func discadableResultSomething(_ something: String) -> String {
    print(something)
    return something
}

something("Something happened here")

discadableResultSomething("Something happened here")

