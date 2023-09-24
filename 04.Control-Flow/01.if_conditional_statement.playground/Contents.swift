// if 구문 기본
let myHeight: Int = 174
let urHeight: Int = 180

if myHeight > urHeight {
    print("Win!")
} else if myHeight < urHeight {
    print("Lose..")
} else {
    print("Same Same ~")
}

// if 구문의 종료 조건
let myWeight: Int = 60
let urWeight: Int = 70

var trueCount: Int = 0

if myWeight < urWeight {
        trueCount += 1
} else if myWeight > urWeight {
        trueCount += 1
} else if myWeight == 60 {
        trueCount += 1
}

print(trueCount)
