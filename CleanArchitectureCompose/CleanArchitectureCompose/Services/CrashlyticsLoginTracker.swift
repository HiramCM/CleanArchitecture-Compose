//
//  CrashlyticsLoginTracker.swift
//  CleanArchitectureCompose
//
//  Created by Hiram Castro Maldonado on 20/10/21.
//

import Foundation

final class CrashlyticsLoginTracker: LoginUseCaseOutput {
    func loginSuceeded() {
        // send login event to crashlytics
    }
    
    func loginFailed() {
        // send error event to crashlytics
    }
}
