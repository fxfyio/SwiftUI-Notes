//
//  ContentView.swift
//  SwiftUI-Notes-Demo
//
//  Created by Eric on 7/3/23.
//

import SwiftUI


struct ListItem: Identifiable {
    let id: Int
    
    let name: String
    let icon: String
    let color: Color
}


struct ContentView: View {
    
    @State var listItems = [
        ListItem(id: 0, name: "静态列表", icon: "list.number", color: .black),
        ListItem(id: 1, name: "基于数组列表", icon: "list.number", color: .black),
        ListItem(id: 2, name: "动态列表", icon: "list.number", color: .black)
    ]
    
    
    var body: some View {
        NavigationView {
            List(listItems) { item in
                if item.id == 0 {
                    NavigationLink(destination: StaticListDetailView()) {
                        HStack {
                            Image(systemName: item.icon)
                            Text(item.name)
                        }
                    }
                } else if item.id == 1 {
                    NavigationLink(destination: ArrayListDetailView()) {
                        HStack {
                            Image(systemName: item.icon)
                            Text(item.name)
                        }
                    }
                } else {
                    HStack {
                        Image(systemName: item.icon)
                        Text(item.name)
                    }
                }
                
            }.navigationTitle("List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
