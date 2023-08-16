//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Eric on 8/16/23.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { item in
                        CategoryItem(landmark: item)
                    }
                }
            }
            .frame(height: 185)

        }
        
        
    }
}

struct CategoryRow_Previews: PreviewProvider {
    
    static var landmark = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(categoryName: landmark[0].category.rawValue, items: Array(landmark.prefix(4)))
    }
}
