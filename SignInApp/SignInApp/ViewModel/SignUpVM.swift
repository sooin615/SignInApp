//
//  SignUpVM.swift
//  SignInApp
//
//  Created by Agiss on 2023/06/14.
//

import SwiftUI
import Firebase
import GoogleSignIn

class SignUpViewModel: ObservableObject {
    
    @Published var isLogin: Bool = false
    
    func signUpWithGoogle() {
        
        guard let clientId = FirebaseApp.app()?.options.clientID else { return }
        
        let config = GIDConfiguration(clientID: clientId)
        
        GIDSignIn.sharedInstance.signIn(with: config, presenting: ApplicationUtility.rootViewController) {
            [self] user, err in
            
            if let error = err {
                print(error.localizedDescription)
                return
            }
            
            guard
                let authentication = user?.authentication,
                let idToken = authentication.idToken
            else { return }
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: authentication.accesToken)
            
            Auth.auth().signIn(with: credential) { result, error in
                
                if let err = error {
                    print(err.localizedDescription)
                    return
                }
                
                guard let user = result?.user else { return }
                print(user.displayName)
                isLogin.toggle()
            }
        }
    }
    
}

