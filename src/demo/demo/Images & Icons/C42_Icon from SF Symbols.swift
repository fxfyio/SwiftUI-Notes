//
//  C42_Icon from SF Symbols.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI

struct C42_Icon_from_SF_Symbols: View {
    var body: some View {
        VStack {
            Image(systemName: "pawprint.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.blue)
            Divider()
            HStack() {
                //带斜线的铃铛
                Image(systemName: "bell")
                    .symbolVariant(.slash)
                    
                // 带方框的铃铛
                Image(systemName: "bell")
                    .symbolVariant(.square)
                
                // 填充颜色➕斜线
                Image(systemName: "bell")
                    .symbolVariant(.fill.slash)
                    
            }.font(.largeTitle)
            Divider()
        }


    }
}



struct C42_Icon_from_SF_Symbols_Previews: PreviewProvider {
    static var previews: some View {
        C42_Icon_from_SF_Symbols()
    }
}
