//
//  SignUpItemView.swift
//  SignInApp
//
//  Created by Agiss on 2023/06/14.
//

import SwiftUI

struct SignupItemView: View {
    //MARK: - PROPERTIES
    let backgroundColor: String
    let images: String
    //MARK: - BODY
    var body: some View {
        ZStack {
            Image(images)
                .resizable()
                .scaledToFit()
                .frame(height: 25, alignment: .center)
        }//: ZSTACK
        .frame(width: 85, height: 60, alignment: .center)
        .background(
        Color(backgroundColor)
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 1)
        )
    }
}
