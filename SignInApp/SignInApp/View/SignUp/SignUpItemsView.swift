//
//  SignUpItemsView.swift
//  SignInApp
//
//  Created by Agiss on 2023/06/14.
//

import SwiftUI

struct SignupItmesView: View {
    @EnvironmentObject var signupVM: SignUpViewModel
    var body: some View {
        Button {
            signupVM.signUpWithGoogle()
        } label: {
            SignupItemView(backgroundColor: "googleColor", images: "google")
        }
    }
}

struct SignupItmesView_Previews: PreviewProvider {
    static var previews: some View {
        SignupItmesView()
    }
}
