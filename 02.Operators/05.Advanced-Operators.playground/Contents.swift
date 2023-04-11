// 비트 연산자
let bitA: UInt8 = 0b10111000 // 184
let bitB: UInt8 = 0b00101101 // 45

// NOT(부정) 비트 연산자 (~A) : A의 비트를 반전한 결과를 반환합니다.
let notResult = ~bitA // 0b01000111, 71

// AND(논리곱) 비트 연산자 (A & B) : A와 B의 비트 각각에 대해 AND 연산을 수행한 결과를 반환합니다.
let andResult = bitA & bitB // 0b00101000, 40

// OR(논리합) 비트 연산자 (A | B) : A와 B의 비트 각각에 대해 OR 연산을 수행한 결과를 반환합니다.
let orResult = bitA | bitB // 0b10111101, 189

// XOR(배타적 논리합) 비트 연산자 (A ^ B) : A와 B의 비트 각각에 대해 XOR 연산을 수행한 결과를 반환합니다.
let xorResult = bitA ^ bitB // 0b10010101, 149

// LEFT SHIFT(왼쪽 시프트) 비트 연산자 (A << n) : A의 비트를 왼쪽으로 n만큼 시프트한 결과를 반환합니다.
let leftShiftResult = bitA << 2 // 0b11100000, 224

// RIGHT SHIFT(오른쪽 시프트) 비트 연산자 (A >> n) : A의 비트를 오른쪽으로 n만큼 시프트한 결과를 반환합니다.
let rightShiftResult = bitA >> 3 // 0b00010111, 23

// 오버플로 연산자의 사용
var unsignedInteger: UInt8 = 0
//let errorUnderflowResult: UInt8 = unsignedInteger - 1   // 런타임 오류
let underflowedValue: UInt8 = unsignedInteger &- 1      // 255

unsignedInteger = UInt8.max // 255
//let errorOverflowResult: UInt8 = unsignedInteger + 1    // 런타임 오류
let overflowedValue: UInt8 = unsignedInteger &+ 1  // 0
