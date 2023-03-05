
//Kata Grasshopper - Messi Goals
import Foundation
import XCTest

class Task{
    func maps(a : Array<Int>) -> Array<Int> {
        return a.map { $0 * 2 }
    }
}

//TDD
class TaskTest: XCTestCase{
    
    let app = Task()
    
    func testExample() {
        XCTAssertEqual(app.maps(a: [1,2,3,4,5]), [2,4,6,8,10])
        XCTAssertEqual(app.maps(a: [1,-2,3,4,5]), [2, -4, 6, 8, 10])
        XCTAssertEqual(app.maps(a: [-1,2,3,4,-5]), [-2, 4, 6, 8, -10])
    }
    
    func testEmptyArray() {
        XCTAssertEqual(app.maps(a: []), []);
    }
}

TaskTest.defaultTestSuite.run()
