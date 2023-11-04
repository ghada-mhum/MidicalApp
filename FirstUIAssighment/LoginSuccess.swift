//
//  LoginSuccess.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 08/04/1445 AH.
//

import SwiftUI

struct LoginSuccess: View {
    @State private var name: String = ""
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 10 ,height: 20)
                        .multilineTextAlignment(.leading)
                    
                    
                    
                    
                    
                    Text("Login")
                        .frame(width: 300)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .bold()
                    
                }.padding(.bottom,50)
                
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(.tiffany)
                    TextField("Example@Example", text: $name)
                        .foregroundColor(.black)
                    Image(systemName: "checkmark")
                        .foregroundColor(.tiffany)
                }
                .padding()
                .foregroundColor(.black)
                .fontWeight(.regular)
                .font(.title3)
                .frame(width: 330,height: 50)
                      .background(
                          RoundedRectangle(
                            
                              cornerRadius: 40,
                              style: .continuous
                          )
                          .stroke(.graygray, lineWidth: 1)

                      )
                                .background(Color.lightGray)
                                .cornerRadius(40)

           
                HStack{
                    Image(systemName: "lock")
                        .foregroundColor(.graygray)
                    TextField("Enter your password", text: $name)
                    Image(systemName: "eye.slash")
                        .foregroundColor(.graygray)
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
                
                Button(action:{}) {
                    Text("Forgot Password?")
                        .padding(.leading,160)
                        .foregroundColor(.tiffany)
                }
                .lineSpacing(20)
                Button(action:{}) {
                    Text("Login")
                        .fontWeight(.regular)
                        .frame(width: 300,height: 20)
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.tiffany)
                        .cornerRadius(40)
                        .padding(30)
                }
               
                HStack{
                    Text("Don't have an account?")
                    
                        .foregroundColor(.graygray)
                    Text("Sign Up")
                        .foregroundColor(.tiffany)
                    
                }
              
                LabelledDivider(label: "OR")
                    .padding(20)
                HStack{
                    Image("google")
                        .resizable()
                        .frame(width: 40,height: 40)
                    
                    Button(action:{}) {
                        Text("Sign in with Google")
                            .padding(.leading,50)
                    }
                    
                }
                .padding()
                .fontWeight(.regular)
                .font(.title3)
                .frame(width: 330,height: 55)
                .foregroundColor(.black)
                      .background(

                          RoundedRectangle(

                              cornerRadius: 40,
                              style: .continuous
                          )
                          .stroke(.graygray, lineWidth: 1)

                      )
               
               
                HStack{
                    Image(systemName: "apple.logo")
                    
                    Button(action:{}) {
                        Text("Sign in with Apple")
                            .padding(.leading,50)
                    }
                    
                    
                }
                .padding()
                .fontWeight(.regular)
                .font(.title3)
                .frame(width: 330,height: 55)
                .foregroundColor(.black)
                      .background(

                          RoundedRectangle(

                              cornerRadius: 40,
                              style: .continuous
                          )
                          .stroke(.graygray, lineWidth: 1)

                      )
                HStack{
                    Image("facebook")
                        .resizable()
                        .frame(width: 40,height: 40)
                    Button(action:{}) {
                        Text("Sign in with Facebook")
                            .padding(.leading,40)
                    }
                    
                    
                }
                
                .padding()
                .fontWeight(.regular)
                .font(.title3)
                .frame(width: 330,height: 55)
                .foregroundColor(.black)
                      .background(

                          RoundedRectangle(

                              cornerRadius: 40,
                              style: .continuous
                          )
                          .stroke(.graygray, lineWidth: 1)

                      )
                Spacer()
            }
           
            Rectangle()
                .fill(.gray.opacity(0.6))
                .ignoresSafeArea()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
            Rectangle()
                .fill(.white)
                .frame(width: 350, height: 430)
                .cornerRadius(40)
            VStack{
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .foregroundColor(Color.lightGray)
                    .background(Color.tiffany)
                    .cornerRadius(60)
                
                Text("Yeay! Welcome Back")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Once again you login successfully into medidoc app")
                    .frame(width: 340)
                    .font(.title2)
                    .foregroundColor(.graygray)
                    .multilineTextAlignment(.center)
                Button(action:{}) {
                    Text("Go to home")
                        .fontWeight(.regular)
                        .frame(width: 200,height: 20)
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.tiffany)
                        .cornerRadius(40)
                }
            }
            
                
        }
        }}
    
   

           
    
    struct LabelledDivider: View {
        
        let label: String
        let horizontalPadding: CGFloat
        let color: Color
        
        init(label: String, horizontalPadding: CGFloat = 20, color: Color = .gray) {
            self.label = label
            self.horizontalPadding = horizontalPadding
            self.color = color
        }
        
        var body: some View {
            HStack {
                line
                Text(label).foregroundColor(color)
                line
            }
        }
        
        var line: some View {
            VStack { Divider().background(color) }.padding(horizontalPadding)
        }
    }

