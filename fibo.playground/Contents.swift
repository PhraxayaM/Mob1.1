//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playgrounds"

//func fibo (n: Int) {
//    var num1 = 0
//    var num2 = 1
//
//    for _ in 0 ..< n {
//
//        let num = num1 + num2
//        num1 = num2
//        num2 = num
//    }
//    print("result = \(num2)")
//}
//
//fibo(n: 7)
//
//
//func fibonacciRecursiveNum1(num1: Int, num2: Int, steps: Int) {
//
//    if steps > 0 {
//        let newNum = num1 + num2
//        fibonacciRecursiveNum1(num1: num2, num2: newNum, steps: steps-1)
//    }
//    else {
//        print("result = \(num2)")
//    }
//}
//fibonacciRecursiveNum1(num1: 0, num2: 1, steps: 7)

//func fibonacci(n: Int) {
//    var num1 = 0
//    var num2 = 1
//
//    for _ in 0 ..< n {
//
//        let num = num1 + num2
//        num1 = num2
//        num2 = num
//    }
//
//    print("result = \(num2)")
//}
//fibonacci(n: 6)
//
//func fibbo(n: Int) {
//var x = -1 ,y = 1, sum = 0;
//
//for _ in 0..<n + 1 {
//
//    sum = x+y;
//    x = y;
//    y = sum;
//
//    print(sum);
//}
//}
//fibbo(n: 5)







func printAlternates(n: Int) -> [Int] {
    var left = 1
    var right = n
    var myList = [Int]()
    while left < right {
    myList.append(left)
    myList.append(right)
        right -= 1
        left += 1
    }
    return myList
}

printAlternates(n: 11)






























//func pract3(_ n: Int) {
//    var x = -1, y = 1, sum = 0;
//    for _ in 0..<n+1 {
//        sum = x + y;
//        x = y;
//        y = sum;
//        
//        print(sum)
//    }
//}
//
//pract3(8)








//func pract2(n: Int) {
//    var x = -1, y = 1, sum = 0;
//    for _ in 0..<n+1 {
//        sum = x + y;
//        x = y;
//        y = sum;
//
//        print(sum)
//    }
//}
//
//pract2(n: 7)




//func pract1(n: Int) {
//    var x = -1, y = 1, sum = 0;
//
//    for _ in 0..<n+1 {
//        sum = x+y;
//        x = y;
//        y = sum;
//
//        print(sum)
//    }
//}
//
//pract1(n: 5)


//func fiber(n: Int) {
//    var x = -1
//    var y = 1
//    var sum = 0
//    for _ in 0..<n + 1 {
//        sum = x + y;
//        x = y;
//        y = sum;
//
//        print(sum);
//    }
//
//}
//fiber(n: 3)
//func powa(p: Double) {
//let n = p
//let pwr = pow(n,2)
//
//for _ in 0..<n {
//
//    }
//print(pwr)
//
//}


