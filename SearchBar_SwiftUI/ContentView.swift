//
//  ContentView.swift
//  SearchBar_SwiftUI
//
//  Created by Suraj on 21/08/20.
//  Copyright © 2020 Suraj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    
    let names = ["Amara", "Aamin", "Aman", "Naaz", "Sophia", "Sumera", "Tasmiya", "Zayn", "Zeenat"]
    
    
    var body: some View {
        List {
            SearchBar(text: $searchText)
            ForEach(self.names.filter {
                self.searchText.isEmpty ? true : $0.localizedCaseInsensitiveContains(self.searchText)
            }, id: \.self) { name in
                Text(name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
