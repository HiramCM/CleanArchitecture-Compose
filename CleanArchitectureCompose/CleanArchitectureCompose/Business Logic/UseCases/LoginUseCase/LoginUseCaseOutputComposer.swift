//
//  LoginUseCaseOutputComposer.swift
//  CleanArchitectureCompose
//
//  Created by Hiram Castro Maldonado on 20/10/21.
//

import Foundation

final class LoginUseCaseOutputComposer: LoginUseCaseOutput {
    let outputs: [LoginUseCaseOutput]
    
    init(_ outputs: [LoginUseCaseOutput]) {
        self.outputs = outputs
    }
    
    func loginSuceeded() {
        self.outputs.forEach { output in
            output.loginSuceeded()
        }
    }
    
    func loginFailed() {
        self.outputs.forEach { output in
            output.loginFailed()
        }
    }
    
}
