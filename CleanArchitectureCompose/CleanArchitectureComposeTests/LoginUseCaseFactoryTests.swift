//
//  LoginUseCaseFactoryTests.swift
//  CleanArchitectureComposeTests
//
//  Created by Hiram Castro Maldonado on 20/10/21.
//

import XCTest
@testable import CleanArchitectureCompose

class LoginUseCaseFactoryTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let factory = LoginUseCaseFactory()
        let useCase = factory.makeUseCase()
        let composer = useCase.output as? LoginUseCaseOutputComposer
        
        XCTAssertNotNil(composer)
        XCTAssertEqual(composer?.outputs.count, 3)
        XCTAssertEqual(composer?.outputs.filter { $0 is LoginPresenter }.count, 1)
        XCTAssertEqual(composer?.outputs.filter { $0 is CrashlyticsLoginTracker }.count, 1)
        XCTAssertEqual(composer?.outputs.filter { $0 is FirebaseAnalyticsLoginTracker }.count, 1)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
