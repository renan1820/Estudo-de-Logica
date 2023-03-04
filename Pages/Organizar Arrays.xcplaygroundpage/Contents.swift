import XCTest
//KATA Organizador de Arrays 

class Task{
    func flip(_ direction: String, _ a: [Int]) -> [Int]{
    
        return direction.elementsEqual("R") ?  a.sorted() : a.sorted().reversed()
    }
}

//TDD
class TaskTest: XCTestCase{
    
    let app = Task()
    
    func testCanCreateATask(){
        XCTAssertEqual(app.flip("R", [3, 2, 1, 2]), [1, 2, 2, 3])
        XCTAssertEqual(app.flip("L", [1, 4, 5, 3, 5]), [5, 5, 4, 3, 1])
    }
}

TaskTest.defaultTestSuite.run()
