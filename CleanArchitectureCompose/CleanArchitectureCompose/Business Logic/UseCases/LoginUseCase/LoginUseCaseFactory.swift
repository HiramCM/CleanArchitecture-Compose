//
//  LoginUseCaseFactory.swift
//  CleanArchitectureCompose
//
//  Created by Hiram Castro Maldonado on 20/10/21.
//

import Foundation


final class LoginUseCaseFactory {
    
    func makeUseCase() -> LoginUseCase {
        return LoginUseCase(outputs:
                                LoginUseCaseOutputComposer([
                                                            LoginPresenter(),
                                                            CrashlyticsLoginTracker(),
                                                            FirebaseAnalyticsLoginTracker(),
        ]))
    }
    
}
