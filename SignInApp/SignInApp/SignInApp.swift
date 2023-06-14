//
//  SignInAppApp.swift
//  SignInApp
//
//  Created by Agiss on 2023/06/14.
//

import SwiftUI
import Firebase
import GoogleSignIn

@main
struct goolgeLoginApp: App {
    @UIApplicationDelegateAdaptor(AppDelgate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(SignUpViewModel())
        }
    }
}

class AppDelgate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions lanchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return GIDSignIn.sharedInstance.handle(url)
    }
}

