//
//  LoginUseCase.swift
//  CleanArchitectureCompose
//
//  Created by Hiram Castro Maldonado on 20/10/21.
//

import Foundation

protocol LoginUseCaseOutput {
    func loginSuceeded()
    func loginFailed()
}

final class LoginUseCase {
    
    let output: LoginUseCaseOutput
    
    init(outputs:LoginUseCaseOutput) {
        self.output = outputs
    }
    
    func login(name:String, password:String) {
        // if success output.loginSuceeded()
        // else output.loginFailed()
    }
    
}
