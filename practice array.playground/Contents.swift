//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

func fibo(n: Int) {
    var x = -1, y = 1, sum = 0;
    
    for _ in 0..<n + 1{
        sum = x + y;
        x = y;
        y = sum;
        
        print(sum)
    }
}
fibo(n: 5)








































//
//
//func alt(n: Int) -> [Int] {
//    var left = 1
//    var right = n
//    var list = [Int]()
//    while left < right {
//        list.append(left)
//        list.append(right)
//        right -= 1
//        left += 1
//
//    }
//    return list
//}
//
//alt(n: 8)


//func lala(N: Int) -> [Int] {
//    var left = 1
//    var right = N
//    var listH = [Int]()
// while left < N {
//    listH.append(left)
//    listH.append(right)
//    right -= 1
//    left += 1
//    }
//    return listH
//}
//lala(N: 8)


//
//
//
//func practAlt3(N: Int) -> [Int] {
//    var left = 1
//    var right = N
//    var list3 = [Int]()
//    while left < N {
//        list3.append(left)
//        list3.append(right)
//        left += 1
//        right -= 1
//    }
//    return list3
//}
//practAlt3(N: 8)
//
//
//
//func pract7Fibo(N: Int) {
//    var x = -1, y = 1, sum = 0;
//    for _ in 0..<N + 1 {
//        sum = x + y;
//        x = y;
//        y = sum;
//
//        print(sum)
//    }
//}
//
//pract7Fibo(N: 9)
//
//
//
//






func powerTo(N: Int) {
    var base = N, power = 2, answer = 1;
    for _ in 1..<N {
        base *= power
        answer = base
        print(answer)
    }
}


powerTo(N: 4)



















































//
//
//
//func fibin(n: Int) {
//    var x = -1, y = 1, sum = 0
//    for _ in 0..<n + 1 {
//        sum = x + y;
//        x = y;
//        y = sum;
//
//        print(sum)
//    }
//}
//
//fibin(n: 10)
//
//














