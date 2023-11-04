//
//  chatView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI

struct chatView: View {
    @State var message = ""
    var body: some View {
        NavigationStack{
            HStack{
                Image(systemName: "chevron.left")
 
                Text("Dr.Marcus")
                    .bold()
                    .padding(.horizontal)
                Spacer()
                Image(systemName: "video.fill")
                    .padding(.horizontal,5)
                    Image(systemName: "phone.fill")
                    .padding(.horizontal,5)
                    Image(systemName: "ellipsis")
                    .padding(.horizontal,5)

            }.padding()
            ScrollView{
                
                VStack{
                    
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .stroke(.gray.opacity(0.2))
                        .frame(width: 350,height: 80)
                        .overlay(
                            VStack{
                                Text("Consultion Start")
                                    .foregroundColor(.tiffany)
                                    .bold()
                                Text("you can consult your problem to the doctor")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        )
                    HStack{
                        VStack{
                            HStack{
                                Image("TD1")
                                    .resizable()
                                    .frame(width: 50,height: 50)
                                    .clipShape(Circle())
                                VStack(alignment: .leading){
                                    Text("Dr.Marcus")
                                        .bold()
                                    Text("10 min ago")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                            }
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.lightGreen)
                                .frame(width: 250,height: 50)
                                .padding(.leading,-110)
                                .overlay(
                                Text("Hello, How can i help you?")
                                    .foregroundColor(.black.opacity(0.6))
                                    .padding(.leading,-120)
                                )
     
                        }
                        Spacer()
                    }.padding()
                    
                    HStack{
                        Spacer()
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.tiffany)
                            .frame(width: 250,height: 100)
                            .overlay(
                                ZStack{
                                    Text("I have suffering from headache and cild for 3 days, i look 2 tablets of dolo, but still pain ")
                                        .foregroundColor(.white)
                                    Image(systemName: "checkmark")
                                        .resizable()
                                        .frame(width: 10,height: 10)
                                        .foregroundColor(.white)
                                        .offset(x: 110,y:35)
                                    Image(systemName: "checkmark")
                                        .resizable()
                                        .frame(width: 10,height: 10)
                                        .foregroundColor(.white)
                                        .offset(x: 106,y:35)
                                }
                            )
                    }.padding()
                    
                    HStack{
                        VStack{
                            HStack{
                                Image("TD1")
                                    .resizable()
                                    .frame(width: 50,height: 50)
                                    .clipShape(Circle())
                                VStack(alignment: .leading){
                                    Text("Dr.Marcus")
                                        .bold()
                                    Text("10 min ago")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                            }
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.lightGreen)
                                .frame(width: 250,height: 60)
                                .padding(.leading,-110)
                                .overlay(
                                Text("Ok, Do you have faver? is the headache severs")
                                    .foregroundColor(.black.opacity(0.6))
                                    .padding(.leading,-120)
                                )
     
                        }
                        Spacer()
                    }.padding()
                    
                    HStack{
                        Spacer()
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.tiffany)
                            .frame(width: 250,height: 80)
                            .overlay(
                                ZStack{
                                    Text("I don't have any faver, but headchace is painful")
                                        .foregroundColor(.white)
                                    Image(systemName: "checkmark")
                                        .resizable()
                                        .frame(width: 10,height: 10)
                                        .foregroundColor(.white)
                                        .offset(x: 110,y:30)
                                    Image(systemName: "checkmark")
                                        .resizable()
                                        .frame(width: 10,height: 10)
                                        .foregroundColor(.white)
                                        .offset(x: 106,y:29)
                                }
                            )
                    }.padding()
                    
                    HStack{
                        VStack{
                            HStack{
                                Image("TD1")
                                    .resizable()
                                    .frame(width: 50,height: 50)
                                    .clipShape(Circle())
                                VStack(alignment: .leading){
                                    Text("Dr.Marcus")
                                        .bold()
                                    Text("10 min ago")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                            }
                        
                                Image(systemName: "ellipsis.rectangle.fill")
                                .resizable()
                                .frame(width: 60,height: 30)
                                    .foregroundColor(.lightGreen)
                                    .background(.black)
                                    .cornerRadius(10)
                                    .padding(.leading,-170)
                        }
                        Spacer()
                    }.padding()
                    HStack{
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.white)
                            .stroke(.gray.opacity(0.2))
                            .frame(width: 250,height: 50)
                            .overlay(
                                HStack{
                                    TextField("Type message", text: $message)
                                    Image(systemName: "paperclip")
                                        .foregroundColor(.gray)
                                }.padding(.horizontal)
                            )
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            RoundedRectangle(cornerRadius: 30)
                                .fill(.tiffany)
                                .frame(width: 100, height: 50)
                                .overlay(
                                Text("Send")
                                    .foregroundColor(.white)
                                    .bold()
                                )
                        })
                    }.padding()
                 Spacer()
                }
            }
        }
    }
}

#Preview {
    chatView()
}
