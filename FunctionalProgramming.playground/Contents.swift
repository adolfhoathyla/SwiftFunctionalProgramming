//: Playground - noun: a place where people can play

import UIKit

let numbers = [5, 6, 9, 8, 52, 62, 74]

//MARK: - Map
//way 1
let a = numbers.map { (n) -> Int in
    return n * n
}
print(a)

//way 2
let a2 = numbers.map { $0 * $0 }
print(a2)

//way 3
let a3 = numbers.map { n in n * n }
print(a3)



//MARK: - Filter
//way 1
let b = numbers.filter { (n) -> Bool in
    return n % 2 == 0
}
print(b)

//way 2
let b2 = numbers.filter { $0 % 2 == 0 }
print(b2)

//way 3
let b3 = numbers.filter { n in n % 2 == 0 }
print(b3)



//MARK: - Reduce
let names = ["alan","brian","charlie"]
let csv = names.reduce("===") {text, name in "\(text),\(name)"}
print(csv)



//MARK: - FlatMap / CompactMap
let matriz = [[1, 4, 8], [8, 5, 1], [9, 7, 9]]
let d = matriz.compactMap { intArray in intArray.reduce(0, +) }
print(d)
