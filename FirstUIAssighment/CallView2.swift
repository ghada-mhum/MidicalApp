//
//  CallView2.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI

struct CallView2: View {
    var body: some View {
        ZStack{
            Image("callimg3")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(0.8)]), startPoint: .top, endPoint: .bottom))
                .frame(height: 400)
                .offset(y: 220)
            Image("callimg4")
                .resizable()
                .frame(width: 80,height: 120)
                .offset(x:130,y: -300)
            
            
            VStack{
                Text("Dr.Marcus")
                    .foregroundColor(.white)
                    .bold()
                Text("00:05:24")
                    .foregroundColor(.white)
                    .font(.callout)
                HStack(spacing: 20){
                    Image(systemName: "video")
                        .resizable()
                        .frame(width: 30,height: 25)
                        .foregroundColor(.white)
                        .padding()
                        .background(.gray.opacity(0.5))
                        .cornerRadius(30)
                    Image(systemName: "phone")
                        .resizable()
                        .frame(width: 25,height: 25)
                        .foregroundColor(.white)
                        .padding()
                        .background(.red.opacity(0.5))
                        .cornerRadius(30)
                    Image(systemName: "mic")
                        .resizable()
                        .frame(width: 25,height: 25)
                        .foregroundColor(.white)
                        .padding()
                        .background(.gray.opacity(0.5))
                        .cornerRadius(30)
                }.padding()
            }.offset(CGSize(width: 0, height: 250))
        }
    }
}

#Preview {
    CallView2()
}
