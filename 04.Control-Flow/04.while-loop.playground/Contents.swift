// while 반복 구문의 사용
var names: [String] = ["Adam", "Jack", "Yuda", "Hyeok"]

while names.isEmpty == false {
    print("Hello \(names.removeFirst())")
}

// repeat-while 반복 구문의 사용
names = ["Adam", "Jack", "Yuda", "Hyeok"]

repeat {
    print("Bye.. \(names.removeFirst())")
} while names.isEmpty == false
