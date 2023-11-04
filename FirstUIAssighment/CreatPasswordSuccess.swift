//
//  CreatPasswordSuccess.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI

struct CreatPasswordSuccess: View {
    @State var newPassword = ""
    @State var confirmPassword = ""
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
                .padding(.bottom,50)
            
            VStack{
                HStack{
                    Text("Creat New Password")
                        .font(.title)
                        .bold()
                        .padding(.horizontal,30)
                    
                    Spacer()
                }
                HStack{
                    Text("Creat your new password to login")
                        .foregroundColor(.gray)
                        .padding(.horizontal,30)
                    Spacer()
                }
            }
            HStack{
                Image(systemName: "lock")
                    .foregroundColor(.graygray)
                SecureField("Enter your new password", text: $newPassword)
                Image(systemName: "eye.slash")
                    .foregroundColor(.graygray)
            }
            .padding()
         
                .fontWeight(.regular)
                .font(.title3)
                .frame(width: 330,height: 60)
                .foregroundColor(.graygray)
                      .background(
                          RoundedRectangle(
                            
                              cornerRadius: 40,
                              style: .continuous
                          )
                          .stroke( .graygray, lineWidth: 1)

                      )
                                .background(Color.lightGray)
                                .cornerRadius(40)
                                .padding(.vertical)
            
            HStack{
                Image(systemName: "lock")
                    .foregroundColor(.graygray)
                SecureField("Confirrm password", text: $confirmPassword)
                Image(systemName: "eye.slash")
                    .foregroundColor(.graygray)
            }
            .padding()
                .fontWeight(.regular)
                .font(.title3)
                .frame(width: 330,height: 60)
                .foregroundColor(.graygray)
                      .background(
                          RoundedRectangle(
                            
                              cornerRadius: 40,
                              style: .continuous
                          )
                          .stroke( .graygray, lineWidth: 1)

                      )
                                .background(Color.lightGray)
                                .cornerRadius(40)
            
            Button(action:{
              
                
            }) {
                Text("Creat Password")
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
        }.overlay(
        Rectangle()
            .fill(.black.opacity(0.3))
            .ignoresSafeArea()
            .overlay(
                Rectangle()
                    .fill(.white)
                    .frame(width: 350, height: 430)
                    .cornerRadius(40)
                    .overlay(
                        VStack{
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .frame(width: 90, height: 90)
                                .foregroundColor(Color.lightGray)
                                .background(Color.tiffany)
                                .cornerRadius(60)
                            
                            Text("Success")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("You have successfully reset your password")
                                .frame(width: 340)
                                .font(.title3)
                                .padding(.horizontal)
                                .foregroundColor(.graygray)
                                .multilineTextAlignment(.center)
                            Button(action:{}) {
                                Text("Login")
                                    .fontWeight(.regular)
                                    .frame(width: 200,height: 20)
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.tiffany)
                                    .cornerRadius(40)
                            }
                        }
                    )
              
            )
        )
    }
}

#Preview {
    CreatPasswordSuccess()
}
