//
//  ContentView.swift
//  Africa
//
//  Created by Yusuf ÇAĞLAR on 26/03/2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    } //: NavigationLink
                } //: Loop
            } //: List
            .navigationBarTitle("Africa", displayMode: .large)
        } //: NavigationView
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
