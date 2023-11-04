//
//  ForgetPasswordView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI

struct ForgetPasswordView: View {
    @State var preselectedIndex = 0
    @State  var Email: String = ""
    @State  var number: String = ""
    var body: some View {
        VStack{
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 10,height: 20)
                        .foregroundColor(.gray)
                })
                Spacer()
            }.padding(.horizontal)
            
            VStack(alignment: .leading){
                Text("Forget Tour Password?")
                    .font(.title)
                    .bold()
                    .padding(.top,30)
                Text("Enter your email or your phone number, we will send you comfirmation code")
                    .foregroundColor(.gray)
            }
            
            CustomSegmentedControl(preselectedIndex: $preselectedIndex, options: ["Email", "Phone"])
            
            if preselectedIndex == 0{
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(Email.isEmpty ? .graygray : .tiffany)
                    TextField("Enter your email", text: $Email)
                }
                .padding()
                .fontWeight(.regular)
                .font(.title3)
                .frame(width: 330,height: 50)
                .foregroundColor(.graygray)
                      .background(
                          RoundedRectangle(
                            
                              cornerRadius: 40,
                              style: .continuous
                          )
                          .stroke(.graygray, lineWidth: 1)

                      )
                                .background(Color.lightGray)
                                .cornerRadius(40)
                                .padding(.vertical)
            }else{
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(number.isEmpty ? .graygray : .tiffany)
                    TextField("Enter your phone number", text: $number)
                }
                .padding()
                .fontWeight(.regular)
                .font(.title3)
                .frame(width: 330,height: 50)
                .foregroundColor(.graygray)
                      .background(
                          RoundedRectangle(
                            
                              cornerRadius: 40,
                              style: .continuous
                          )
                          .stroke(.graygray, lineWidth: 1)

                      )
                                .background(Color.lightGray)
                                .cornerRadius(40)
                                .padding(.vertical)
            }
              
         
            
            Button(action:{
              
                
            }) {
                Text("Reset Password")
                    .fontWeight(.regular)
                    .frame(width: 300,height: 20)
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.tiffany)
                    .cornerRadius(40)
                    .padding()
            }
            Spacer()
        }
    }
}

#Preview {
    ForgetPasswordView()
}
struct CustomSegmentedControl: View {
    @Binding var preselectedIndex: Int
    
    var options: [String]
    let color = Color.white
    var body: some View {
        
        HStack(spacing: 0) {
            ForEach(options.indices, id:\.self) { index in
                
                ZStack {
                    Rectangle()
                        .fill(.pannel)
                        
                    
                    
                    Rectangle()
                        .fill(.white)
                        .cornerRadius(20)
                        .padding(2)
                        .opacity(preselectedIndex == index ? 1 : 0.01)
                        .onTapGesture {
                            withAnimation(.interactiveSpring()) {
                                preselectedIndex = index
                            }
                        }
                }
                .overlay(
                    Text(options[index])
                        .foregroundColor(preselectedIndex == index ? .tiffany : .gray.opacity(0.5))
                        .padding(.horizontal)
                )
            }
            
        }
    
    
        .frame(width:350 ,height: 50)
        .cornerRadius(50)
    
}
    }

