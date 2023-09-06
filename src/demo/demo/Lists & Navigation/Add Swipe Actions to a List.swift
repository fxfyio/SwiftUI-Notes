//
//  Add Swipe Actions to a List.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI

struct Add_Swipe_Actions_to_a_List: View {
    
    @State var messages: [Message] = [
        Message(content: "Hello", isRead: false),
        Message(content: "How are you?", isRead: true),
        Message(content: "Happy coding", isRead: false)
    ]
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        List {
            ForEach(messages.indices, id: \.self) { index in
                Text(messages[index].content)
                    .swipeActions {
                        Button {
                            messages[index].isRead.toggle()
                        } label: {
                            Label("Toggle Read", systemImage: "envelope.open.fill")
                        }
                        
                        Button(role: .destructive) {
                            messages.remove(at: index)
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }

                    }
            }
        }
    }
}

struct Add_Swipe_Actions_to_a_List_Previews: PreviewProvider {
    static var previews: some View {
        Add_Swipe_Actions_to_a_List()
    }
}

struct Message{
    var content: String
    var isRead: Bool
}
