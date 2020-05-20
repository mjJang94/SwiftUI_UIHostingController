//
//  SwiftUIView.swift
//  SwiftUI_UIHostingController
//
//  Created by 장민종 on 2020/05/20.
//  Copyright © 2020 장민종. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    
    var text: String
    
    var body: some View {
        VStack{
        Text(text)
            HStack{
                Image(systemName: "smiley")
                Text("This is a SwiftUI View")
            }
        }.font(.largeTitle)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(text: "Sample Text")
    }
}
