//
//  SecondUI-1.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 07/04/1445 AH.
//

import Foundation
import SwiftUI
struct DoctorsViewOne: View {
    var body: some View {
        VStack {
            ZStack{
               
                Image(.img3)
                    .resizable()
                    .frame(width: 330, height: 500)
                    .position(x:200 ,y:300)
                   
                    Text("Consult only with a doctor you trust")
                        .position(x:180,y:380)
                        .frame(width: 340 , height: 300)
                        .foregroundStyle(.black)
                        .font(.title2)
                        .fontWeight(.bold)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [.pannel, .clear]), startPoint: .top, endPoint: .bottom)
                                .cornerRadius(30)
                                .position(x:170,y:450)
                            
                        )
                    
                    Button(action: {}) {
                        Image(systemName: "arrow.right")
                            .fontWeight(.regular)
                            .font(.title3)
                            .frame(width:25 , height: 25)
                            .padding()
                            .foregroundColor(.white)
                            .background(.tiffany)
                            .cornerRadius(40)
                            .position(x:320,y:700)
                    }
                
                Text("Skip")
                    .foregroundColor(.gray)
                    .fontWeight(.regular)
                    .position(x:350,y:45)
                Rectangle()
                    .cornerRadius(3.0)
                    .frame(width: 16 ,height: 5)
                    .foregroundColor(.tiffany)
                    .position(x:70,y:715)
                Rectangle()
                    .cornerRadius(3.0)
                    .frame(width: 16 ,height: 5)
                    .foregroundColor(.lightTifanny)
                    .position(x:90,y:715)
                Rectangle()
                    .cornerRadius(3.0)
                    .frame(width: 16 ,height: 5)
                    .foregroundColor(.lightTifanny)
                    .position(x:110,y:715)
            }
        }
    }
}
#Preview {
    DoctorsViewOne()
}
