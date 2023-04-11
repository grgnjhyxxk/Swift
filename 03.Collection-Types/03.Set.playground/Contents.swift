// 세트의 선언과 생성
//var set: Set<String> = Set<String>()
//var set: Set<String> = []

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop", "Rock"]
// var favoriteGenres: Set = ["Rock", "Classical", "Hip hop", "Rock"] // 타입추론으로 이렇게도 선언 가능.

print(favoriteGenres.isEmpty)    // false
print(favoriteGenres.count)      // 3, Rock은 중복이므로 1개만 취급

// 세트의 사용
favoriteGenres.insert("jazz")
print(favoriteGenres)            // ["Classical", "Rock", "Hip hop", "jazz"]

favoriteGenres.remove("Rock")
print(favoriteGenres)            // ["Classical", "Hip hop", "jazz"]

favoriteGenres.contains("Classical") // true

// 세트의 활용
// 집합연산
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted() // 합집합
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted() // 교집합
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted() // 차집합
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted() // 여집합의 합
// [1, 2, 9]

// 포함관계
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals) // 부분집합
// true
farmAnimals.isSuperset(of: houseAnimals) // 전체집합
// true
farmAnimals.isDisjoint(with: cityAnimals) // 배타적
// true
