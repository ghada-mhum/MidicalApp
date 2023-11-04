//
//  SignUpSuccess.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 09/04/1445 AH.
//

import SwiftUI

struct SignUpSuccess: View {
    @State private var name: String = ""
    @State private var isChecked: Bool = false
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 10 ,height: 20)
                        .multilineTextAlignment(.leading)
                    
                    
                    
                    
                    
                    Text("Sign Up")
                        .frame(width: 300)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .bold()
                    
                }                        .padding(.bottom,50)
                
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.tiffany)
                    
                    Text("James Schleifer")
                        .padding(.trailing,95)
                    
                }
                .padding()
                .fontWeight(.regular)
                .font(.title3)
                .frame(width: 330,height: 50)
                .foregroundColor(.black)
                .background(
                    RoundedRectangle(
                        
                        cornerRadius: 40,
                        style: .continuous
                    )
                    .stroke(.graygray, lineWidth: 1)
                    
                )
                .background(Color.lightGray)
                .cornerRadius(40)
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(.tiffany)
                    Text("jamesschleifer.com")
                        .padding(.trailing,40)
                    
                    Image(systemName: "checkmark")
                        .foregroundColor(.tiffany)
                }
                .padding()
                .fontWeight(.regular)
                .font(.title3)
                .frame(width: 330,height: 60)
                .foregroundColor(.black)
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
                
                
                VStack {
                    // 3. Create the Toggle view
                    Toggle(isOn: $isChecked) {
                        // 4. Add a label for the Toggle
                        HStack{
                            Text("I agree to the medidoc ")
                                .foregroundColor(.gray)
                                .font(.caption)
                                .padding(-10)
                            Text("Terms of Service")
                                .foregroundColor(.tiffany)
                                .font(.caption)
                            
                            Text("and")
                                .foregroundColor(.gray)
                                .font(.caption)
                            
                            Text("Privacy Policy")
                                .foregroundColor(.tiffany)
                                .font(.caption)
                            
                        }
                    }
                    
                    // 5. Add styling to make it look like a checkbox
                    .toggleStyle(CheckboxToggleStyle())
                    .padding()
                }
                .lineSpacing(20)
                Button(action:{}) {
                    Text("Sign Up")
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
                .padding(.bottom,30)
            VStack{
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .foregroundColor(Color.lightGray)
                    .background(Color.tiffany)
                    .cornerRadius(60)
                
                Text("Success")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Your account has been succesfully registered")
                    .frame(width: 340)
                    .font(.title2)
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
        }
    }
        
        
        
        
        
        
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
        struct CheckboxToggleStyle: ToggleStyle {
            func makeBody(configuration: Self.Configuration) -> some View {
                HStack {
                    
                    
                    Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .onTapGesture { configuration.isOn.toggle() }
                        .foregroundColor(.graygray)
                    
                    configuration.label
                }
            }
        }
    }

