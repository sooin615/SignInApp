//
//  ContentView.swift
//  SignInApp
//
//  Created by Agiss on 2023/06/14.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var signupVM: SignUpViewModel
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .padding(.vertical)

            VStack(alignment: .leading, spacing: 10) {
                SignUpTitleView(title: "Get started with")
                    .padding(.vertical)
                SignupItemView(backgroundColor: "googleColor", images: "google")
            }
        }
        
        
        

    }
}
