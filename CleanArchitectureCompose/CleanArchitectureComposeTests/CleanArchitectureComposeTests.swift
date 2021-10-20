//
//  CleanArchitectureComposeTests.swift
//  CleanArchitectureComposeTests
//
//  Created by Hiram Castro Maldonado on 20/10/21.
//

import XCTest
@testable import CleanArchitectureCompose

class CleanArchitectureComposeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_composingZeroOutputs_doesNotCrash() throws {
        let outpuComposer = LoginUseCaseOutputComposer([])
        outpuComposer.loginSuceeded()
        outpuComposer.loginFailed()
    }
    
    func test_composingOneOutput_delegatesSuceededMessage() throws {
        let output1 = LoginUseCaseOutputSpy()
        let composer = LoginUseCaseOutputComposer([output1])
        
        composer.loginSuceeded()
        
        XCTAssertEqual(output1.loginSuceededCallCount, 1)
        XCTAssertEqual(output1.loginFailCallCount, 0)
    }
    
    func test_composingOneOutput_delegatesFailedMessage() throws {
        let output1 = LoginUseCaseOutputSpy()
        let composer = LoginUseCaseOutputComposer([output1])
        
        composer.loginFailed()
        
        XCTAssertEqual(output1.loginSuceededCallCount, 0)
        XCTAssertEqual(output1.loginFailCallCount, 1)
    }
    
    func test_composingMultipleOutput_delegatesSuceededMessage() throws {
        let output1 = LoginUseCaseOutputSpy()
        let output2 = LoginUseCaseOutputSpy()
        let composer = LoginUseCaseOutputComposer([output1, output2])
        
        composer.loginSuceeded()
        
        XCTAssertEqual(output1.loginSuceededCallCount, 1)
        XCTAssertEqual(output1.loginFailCallCount, 0)
        
        XCTAssertEqual(output2.loginSuceededCallCount, 1)
        XCTAssertEqual(output2.loginFailCallCount, 0)
    }
    
    func test_composingMultipleOutput_delegatesFailedMessage() throws {
        let output1 = LoginUseCaseOutputSpy()
        let output2 = LoginUseCaseOutputSpy()
        let composer = LoginUseCaseOutputComposer([output1, output2])
        
        composer.loginFailed()
        
        XCTAssertEqual(output1.loginSuceededCallCount, 0)
        XCTAssertEqual(output1.loginFailCallCount, 1)
        
        XCTAssertEqual(output2.loginSuceededCallCount, 0)
        XCTAssertEqual(output2.loginFailCallCount, 1)
    }
    
    //MARK: HELPER
    
    private class LoginUseCaseOutputSpy: LoginUseCaseOutput {
        var loginSuceededCallCount = 0
        var loginFailCallCount = 0
        
        func loginSuceeded() {
            loginSuceededCallCount += 1
        }
        
        func loginFailed() {
            loginFailCallCount += 1
        }
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
