// Switch 구문의 기본
let age: Int = 25

switch age {
case 0:
    print("age == 0")
case 1...25:
    print("1 <= age <= 50")
    fallthrough
case 25:
    print("age == 25")
    fallthrough
default:
    print("I don't know..")
}

// 튜플과 Switch
typealias Profile = (name: String, age: Int)

let Me: Profile = ("Hyeok", 25)

switch Me {
case ("Hyeok", 25):
    print("옳은 프로필")
default:
    print("옳지 않은 프로필")
}

// 와일드카드
let Me_2: Profile = ("Hyeok", 25)

switch Me_2 {
case ("Hyeok", 25):
    print("옳은 프로필")
case ("Hyeok", _):
    print("이름만 정확")
case (_, 25):
    print("나이만 정확")
default:
    print("둘 다 옳지 않은 프로필")
}

// let을 이용한 값 바인딩
let Me_3: Profile = ("Hyeok", 25)

switch Me_3 {
case ("Hyeok", 25):
    print("옳은 프로필")
case ("Hyeok", let age):
    print("이름만 정확, 틀린 나이의 정보는 \(age)입니다.")
case (let name, 25):
    print("나이만 정확, 틀린 이름의 정보는 \(name)")
default:
    print("둘 다 옳지 않은 프로필")
}

let 나이: Int = 25
let 학력: String = "대학교 재학"
let 취업여부: Bool = false

switch 나이 {
case 25 where 취업여부 == false && 학력 == "대학교 재학":
    print("대학생입니다.")
case 25 where 취업여부 == true:
    print("능력자입니다.")
default:
    print("누굽니까?")
}

enum School {
    case primary, elementary, middle, high, college, university, graduate
}

let 최종학력: School = School.university

switch 최종학력 {
case.primary:
    print("최종학력은 유치원입니다.")
case.elementary:
    print("최종학력은 초등학교입니다.")
case.middle:
    print("최종학력은 중학교입니다.")
case.high:
    print("최종학력은 고등학교입니다.")
case.college, .university:
    print("최종학력은 대학(교)입니다.")
case.graduate:
    print("최종학력은 대학원입니다.")
}
