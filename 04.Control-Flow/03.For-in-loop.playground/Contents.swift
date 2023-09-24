// for-in 구문의 기본 구성

// for 임시 상수 in 시퀀스 아이템 {
//        실행 코드
// }

// for-in 반복 구문의 활용
for i in 0...2 {
    print(i)
}

for i in 0...5 {
    if i.isMultiple(of: 2) {
        print(i)
        continue
    }
    
    print("\(i) == 홀수")
}

let helloSwift: String = "Hello Swift!"

for char in helloSwift {
    print(char)
}

var result: Int = 1

for _ in 1...3 {
    result *= 10
}

print("10의 3제곱은 \(result)입니다.")

// 기본 데이터 타입의 for-in 반복 구문 사용

// Dictionary
let friends: [String: Int] = ["Jae": 25, "Yong": 29, "Sub": 31]

for tuple in friends {
    print(tuple)
}

let 주소: [String: String] = ["도": "충청남도", "시/군/구": "당진시", "동읍면": "신평면"]

for (키, 값) in 주소 {
    print("\(키): \(값)")
}

// Set
let 지역번호: Set<String> = ["02", "031", "032", "033", "041", "042", "043", "051", "052", "053", "054", "055", "061", "062", "063", "064"]

for 번호 in 지역번호 {
    print(번호)
}
