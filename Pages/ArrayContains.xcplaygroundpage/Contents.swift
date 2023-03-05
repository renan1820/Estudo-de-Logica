
//Kata Grasshopper - Messi Goals
import Foundation
import XCTest

class Task{
    func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
        // Your code here
        a.contains(x)
      
    }
}

//TDD
class TaskTest: XCTestCase{
    
    let app = Task()
    
    static let exampleStringTests = [
        (["t", "e", "s", "t"], "e" , true),
        (["what", "a", "great", "kata"], "kat" , false)
    ]
        
    static let exampleIntTests = [
        ([66, 101], 66, true),
        ([80, 117, 115, 104, 45, 85, 112, 115], 45 , true)
    ]
    
    func runExampleTests() {
            for test in TaskTest.exampleStringTests {
                XCTAssertEqual(app.check(test.0, test.1), test.2)
            }
            for test in TaskTest.exampleIntTests {
                XCTAssertEqual(app.check(test.0, test.1), test.2)
            }
        }
}

TaskTest.defaultTestSuite.run()
