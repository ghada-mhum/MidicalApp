//
//  FirstUI.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 07/04/1445 AH.
//

import Foundation
import SwiftUI

struct FirstView: View {
    var body:  some View {
        VStack() {
            Image(.logo)
                .resizable()
                .frame(width: 150, height:150)
//            Text("Swift معسكر")
            Text("Medical App")
                .font(.custom("", size: 50))
                .foregroundColor(.white)
                .fontWeight(.heavy)
                .fontDesign(.default)
             }.frame(maxWidth: .infinity, maxHeight: .infinity)
                 .background(.tiffany)
    }
}
#Preview {
    FirstView()
}
