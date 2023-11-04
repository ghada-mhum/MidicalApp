//
//  CreatNewPassword.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI

struct CreatNewPassword: View {
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
        }
    }
}

#Preview {
    CreatNewPassword()
}
