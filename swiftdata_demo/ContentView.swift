//
//  ContentView.swift
//  swiftdata_demo
//
//  Created by Omer Cagri Sayir on 12.12.2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var context // reference to the context
    
    var body: some View {
        VStack {
            Button("Add") {
                // Create a new data item
                let data = DataItem()
                
                // Add it to the db
                context.insert(data)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
