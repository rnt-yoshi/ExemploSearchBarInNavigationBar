//
//  ContentView.swift
//  ExemploSearchBarInNavigationBar
//
//  Created by Renato Yoshinari on 29/07/22.
//

import SwiftUI

struct ContentView: View {
    let data = Array(1...1000).map { "Item \($0)"}
    @State private var searchText = ""
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns: layout, spacing: 16) {
                    ForEach(data, id: \.self) { item in
                        ZStack {
                            Rectangle()
                                .fill(Color.blue)
                                .frame(height: 300)
                                .cornerRadius(15)
                            Text(item)
                                .foregroundColor(.black)
                        }
                        
                        
                    }
                } .padding(.horizontal, 6)
            }
            .navigationTitle("Search in Navigation")
        }
        .searchable(text: $searchText)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
