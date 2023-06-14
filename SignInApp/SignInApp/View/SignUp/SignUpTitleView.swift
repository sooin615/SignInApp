//
//  SignUpTitleView.swift
//  SignInApp
//
//  Created by Agiss on 2023/06/14.
//

import SwiftUI

struct SignUpTitleView: View {
    // MARK: - PROPERTIES
    let title: String
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 0) {
            Text(title)
                .font(.body)
                .padding(.horizontal, 10)
        }
    }
}

struct SignUpTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpTitleView(title: "Get Started!")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
