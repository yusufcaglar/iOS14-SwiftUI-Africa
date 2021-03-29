//
//  GalleryView.swift
//  Africa
//
//  Created by Yusuf ÇAĞLAR on 26/03/2021.
//

import SwiftUI

struct GalleryView: View {
    //MARK: - Properties
    
    //MARK: - Body
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery")
        } //: ScrollView
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

//MARK: - Preview

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
