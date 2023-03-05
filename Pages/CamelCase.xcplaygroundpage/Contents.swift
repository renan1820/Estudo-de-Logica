import Foundation
import XCTest

class Task{
    
    func camelCase(_ str: String) -> String {
        let fullArr = str.components(separatedBy: " ")
        
        if(fullArr.isEmpty){
            return ""
        }
            
        return runningArrayAndConvert(fullArr)
    }
    
    func runningArrayAndConvert(_ arrayString: [String]) -> String{
        var fullName: String = ""
        
        for name in arrayString{
            if(name.count >= 1){
                fullName.append(toUpperCase(name))
            }
        }
        
        return fullName
    }
    
    func toUpperCase(_ str:  String) -> String{
        var s = str
        var firstChar = String(s.prefix(1)).uppercased()
        var i = s.index(s.startIndex, offsetBy: 0)
        let removed_String = s.remove(at: i)
        
        return firstChar + s
    }
    
}

//TDD
class TaskTest: XCTestCase{
    
    let app = Task()
    
    func testBasics() {
        XCTAssertEqual(app.camelCase("test case"), "TestCase")
        XCTAssertEqual(app.camelCase("camel case method"), "CamelCaseMethod")
        XCTAssertEqual(app.camelCase("say hello "), "SayHello")
        XCTAssertEqual(app.camelCase(" camel case word"), "CamelCaseWord")
        XCTAssertEqual(app.camelCase(" t a re"), "TARe")
        XCTAssertEqual(app.camelCase(""), "")
    }
}

TaskTest.defaultTestSuite.run()
