// 튜플 기본
var theRock: (String, Int, Double) = ("Dwayne Johnson", 50, 196.3)

print("이름: \(theRock.0), 나이: \(theRock.1), 키: \(theRock.2)") // 이름: Dwayne Johnson, 나이: 50, 키: 196.3
                                                                
theRock.0 = "theRock"
theRock.1 = 100
theRock.2 = 178.5

print("이름: \(theRock.0), 나이: \(theRock.1), 키: \(theRock.2)") // 이름: theRock, 나이: 100, 키: 178.5

// 튜플의 요소에 이름 지정
var thor: (name: String, age: Int, height: Double) = ("Chris Hemsworth", 39, 190.0)

thor.age = 99

print("이름: \(thor.name), 나이: \(thor.age), 키: \(thor.height)") // 이름: Chris Hemsworth, 나이: 99, 키: 190.0

// 튜플 별칭 지정
typealias PersonTuple = (name: String, age: Int, height: Double)

let dwayne: PersonTuple = ("dwayne", 50, 196.3)
let chris: PersonTuple = ("chris", 39, 190.0)

print("이름: \(dwayne.name), 나이: \(dwayne.age), 키: \(dwayne.height)") // 이름: dwayne, 나이: 50, 키: 196.3
print("이름: \(chris.name), 나이: \(chris.age), 키: \(chris.height)") // 이름: chris, 나이: 39, 키: 190.0
