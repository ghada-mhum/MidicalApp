//
//  EnterVerificationCodeView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI

struct EnterVerificationCodeView: View {
    @State var codeNum1 = ""
    @State var codeNum2 = ""
    @State var codeNum3 = ""
    @State var codeNum4 = ""
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
                Text("Enter Verfication Code")
                    .font(.title)
                    .bold()
                    .padding(.top,30)
                
                Text("Enter cide that we have sent to your number ")
                    .foregroundColor(.gray)
                Text("08528188***")
            }
                
            HStack(spacing: 20) {
              
                TextField("", text: $codeNum1)
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                    .fontWeight(.regular)
                    .font(.title3)
                    .frame(width: 70,height: 70)
                    .foregroundColor(.clear)
                          .background(
                              RoundedRectangle(
                                
                                  cornerRadius: 10,
                                  style: .continuous
                              )
                              .stroke(codeNum1.isEmpty ? .lightGray : .tiffany, lineWidth: 3)

                          )
                                    .background(Color.lightGray)
                                    .cornerRadius(10)

                TextField("", text: $codeNum2)
                    .foregroundColor(.black)
                    .bold()
                    .fontWeight(.regular)
                    .font(.title3)
                    .frame(width: 70,height: 70)
                    .foregroundColor(.clear)
                          .background(
                              RoundedRectangle(
                                
                                  cornerRadius: 10,
                                  style: .continuous
                              )
                              .stroke(codeNum2.isEmpty ? .lightGray : .tiffany, lineWidth: 3)

                          )
                                    .background(Color.lightGray)
                                    .cornerRadius(10)
                TextField("", text: $codeNum3)
                    .foregroundColor(.black)
                    .bold()
                    .fontWeight(.regular)
                    .font(.title3)
                    .frame(width: 70,height: 70)
                    .foregroundColor(.clear)
                          .background(
                              RoundedRectangle(
                                
                                  cornerRadius: 10,
                                  style: .continuous
                              )
                              .stroke(codeNum3.isEmpty ? .lightGray : .tiffany, lineWidth: 3)

                          )
                                    .background(Color.lightGray)
                                    .cornerRadius(10)
                TextField("", text: $codeNum4)
                    .foregroundColor(.black)
                    .bold()
                    .fontWeight(.regular)
                    .font(.title3)
                    .frame(width: 70,height: 70)
                    .foregroundColor(.clear)
                          .background(
                              RoundedRectangle(
                                
                                  cornerRadius: 10,
                                  style: .continuous
                              )
                              .stroke(codeNum4.isEmpty ? .lightGray : .tiffany, lineWidth: 3)

                          )
                                    .background(Color.lightGray)
                                    .cornerRadius(10)
            }.padding()
           
            Button(action:{
              
                
            }) {
                Text("Verify")
                    .fontWeight(.regular)
                    .frame(width: 300,height: 20)
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.tiffany)
                    .cornerRadius(40)
                    .padding()
            }
            HStack{
                Text("Didn't receive the code?")
                    .foregroundColor(.gray)
                Text("Resend")
                    .foregroundColor(.tiffany)
            }
            Spacer()
        }
    }
}

#Preview {
    EnterVerificationCodeView()
}
