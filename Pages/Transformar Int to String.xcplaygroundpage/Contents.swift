//: [Previous](@previous)
import Foundation
import XCTest
//KATA para converter Int em String

class Task{
    func numberToString(number: Int)-> String{
        return "\(number)"
      //    return String(number) - 2nd option
      //     return number.description - 3rd option
    }
}

//TDD
class TaskTest: XCTestCase{
    
    let app = Task()
    
    func testCanCreateATask(){
        XCTAssertEqual(app.numberToString(number: 5), "5")
        XCTAssertEqual(app.numberToString(number: 79585), "79585")
        XCTAssertEqual(app.numberToString(number: 1+2), "3")
        XCTAssertEqual(app.numberToString(number: 1-2), "-1")
    }
}

TaskTest.defaultTestSuite.run()
