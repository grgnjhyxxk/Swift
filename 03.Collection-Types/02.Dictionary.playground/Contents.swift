// 딕셔너리의 선언과 생성
typealias normalTypealias = [String: Int]

//var normalDictionary: Dictionary<String, Int> = Dictionary<String, Int>()
//var normalDictionary: [String: Int] = [String: Int]()
//var normalDictionary: normalTypealias = normalTypealias()
//var normalDictionary: [String: Int] = [:]

var profileDictionary: [String: Double] = ["james": 182.1, "daniel": 174.3, "risa": 168.8]

print(profileDictionary.isEmpty) // false
print(profileDictionary.count)   // 3
print(profileDictionary)         // ["james": 182.1, "daniel": 174.3, "risa": 168.8]

// 딕셔너리의 사용
print(profileDictionary["james"])        // 200
print(profileDictionary["risaaaaaaa"])   // nil

profileDictionary["james"] = 173.2
print(profileDictionary["james"])        // 173.2

profileDictionary["who?"] = 12345.12345  // 새롭게 추가
print(profileDictionary["who?"])         // 12345.12345

print(profileDictionary.removeValue(forKey: "james")) // 삭제되고 james의 값인 173.2 반환
print(profileDictionary.removeValue(forKey: "james")) // 이미 삭제되었기에 nil 반환

// 키에 해당하는 값이 없으면 기본값을 돌려주도록 할 수도 있다.
print(profileDictionary["james", default: 0])   // 0
