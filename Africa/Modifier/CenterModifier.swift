//
//  CenterModifier.swift
//  Africa
//
//  Created by Yusuf ÇAĞLAR on 29/03/2021.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
