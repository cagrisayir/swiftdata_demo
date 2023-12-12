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
    
    @Query private var items: Array<DataItem> // auto update
    // @Query will match items as [DataItem]
    
    var body: some View {
        VStack {
            List(items) { item in
                Text(item.creationDate.description)
            }
            
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
