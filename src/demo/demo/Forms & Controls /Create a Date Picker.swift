//
//  Create a Date Picker.swift
//  demo
//
//  Created by Eric on 9/6/23.
//

import SwiftUI

struct Create_a_Date_Picker: View {
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            Text("Selection date is : \(selectedDate)")
            Divider()
            DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .padding()
        }
        .padding()
        
    }
}

struct Create_a_Date_Picker_Previews: PreviewProvider {
    static var previews: some View {
        Create_a_Date_Picker()
    }
}
