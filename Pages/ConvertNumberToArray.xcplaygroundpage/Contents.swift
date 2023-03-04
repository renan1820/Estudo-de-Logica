//: [Previous](@previous)
import XCTest
import Foundation

class Task {
    func digitize(_ num:Int) -> [Int]{
        
        return convertReverseArray(convertStringToArray(convertToString(num)))
    }
    
    
    func convertToString(_ num: Int) -> String{
        return num.description
    }
    
    func convertStringToArray(_ numString: String) -> [Int]{
        let digits: [Int] = numString.compactMap{ $0.wholeNumberValue }
        print(digits.description)
        
        return digits
        }
        
        func convertReverseArray(_ array: [Int])->[Int]{
            return array.reversed()
        }
    }
    
    Task().digitize(123)
    
    //TDD
    class TaskTest: XCTestCase{
        
        let app = Task()
        
        func testReversedArrayOfDigits() {
            XCTAssertEqual(app.digitize(123), [3, 2, 1])
            XCTAssertEqual(app.digitize(348597), [7,9,5,8,4,3])
            XCTAssertEqual(app.digitize(35231),[1,3,2,5,3])
            XCTAssertEqual(app.digitize(23582357),[7,5,3,2,8,5,3,2])
            XCTAssertEqual(app.digitize(984764738),[8,3,7,4,6,7,4,8,9])
            XCTAssertEqual(app.digitize(45762893920),[0,2,9,3,9,8,2,6,7,5,4])
            XCTAssertEqual(app.digitize(548702838394),[4,9,3,8,3,8,2,0,7,8,4,5])
            
        }
        
        func testReversedArrayOfDigitsEdgeCases() {
            XCTAssertEqual(app.digitize(0), [0])
            XCTAssertEqual(app.digitize(1), [1])
        }
    }

    TaskTest.defaultTestSuite.run()

