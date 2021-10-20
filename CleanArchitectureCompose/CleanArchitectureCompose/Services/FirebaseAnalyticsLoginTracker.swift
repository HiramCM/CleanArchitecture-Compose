//
//  FirebaseAnalyticsLoginTracker.swift
//  CleanArchitectureCompose
//
//  Created by Hiram Castro Maldonado on 20/10/21.
//

import Foundation

final class FirebaseAnalyticsLoginTracker: LoginUseCaseOutput {
    func loginSuceeded() {
        // send login event to firebase
    }
    
    func loginFailed() {
        // send error event to firebase
    }
}
