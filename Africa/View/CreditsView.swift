//
//  CreditsView.swift
//  Africa
//
//  Created by Yusuf ÇAĞLAR on 29/03/2021.
//

import SwiftUI

struct CreditsView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
                Copyright © Yusuf ÇAĞLAR
                All rights reserved
                Better Apps Less Code 😎
                """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        } //: VStack
        .padding()
        .opacity(0.4)
    }
}

//MARK: - Preview

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
