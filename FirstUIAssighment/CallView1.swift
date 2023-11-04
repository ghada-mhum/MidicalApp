//
//  CallView1.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI

struct CallView1: View {
    var body: some View {
        ZStack{
            
            Image("callimg1")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            Rectangle()
                .fill(.ultraThinMaterial)
                .ignoresSafeArea()
            
            Image("callimg2")
                .resizable()
                .frame(width: 120,height: 120)
            
            VStack{
                Text("00:05:24")
                    .foregroundColor(.white)
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
    CallView1()
}
