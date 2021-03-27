//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Yusuf ÇAĞLAR on 27/03/2021.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    //MARK: - Properties
    let animal: Animal
    
    //MARK: - Body
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundColor(.accentColor)
            } //: HStack
        } //: GroupBox
    }
}

//MARK: - Preview

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
