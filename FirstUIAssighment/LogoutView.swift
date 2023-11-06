//
//  LogoutView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 22/04/1445 AH.
//

import SwiftUI
struct ProfileData2: Identifiable{
    let id  = UUID()
    let image: String
    let imageColor: Color
    let title: String
    let titleColor:Color
    
}
struct LogoutView: View {
    let ProfileArray: Array<ProfileData2> = [ProfileData2(image: "heart", imageColor: .tiffany, title: "My Saved", titleColor: .black ),ProfileData2(image: "newspaper", imageColor: .tiffany, title: "Appointment", titleColor: .black),ProfileData2(image: "creditcard", imageColor: .tiffany, title: "Payment method", titleColor: .black),ProfileData2(image: "ellipsis.bubble", imageColor: .tiffany, title: "FAQs", titleColor: .black),ProfileData2(image: "info.circle", imageColor: .red, title: "Logout", titleColor: .red)]
    var body: some View {
        ZStack{
            NavigationStack{
                ZStack{
                    Color.profilecolor
                        .ignoresSafeArea()
                    
                    Image("backimg")
                        .resizable()
                        .frame(width: 339,height: 369)
                        .offset(x: 50 ,y: -270)
                        .opacity(0.5)
                    ScrollView{
                        
                        VStack{
                            HStack{
                                Spacer()
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.white)
                                
                            }.padding()
                            
                            Image("profileimg")
                                .resizable()
                                .frame(width: 100,height: 100)
                            
                            Text("Amelia Renate")
                                .font(.title)
                                .bold()
                                .foregroundColor(.white)
                            HStack(spacing: 30){
                                
                                VStack{
                                    Image(systemName: "heart.fill")
                                    
                                    Text("Heart rate")
                                        .font(.caption)
                                    
                                    Text("215bpm")
                                        .bold()
                                    
                                }.foregroundColor(.white)
                                
                                
                                Rectangle()
                                    .fill(.white)
                                    .frame(width: 1)
                                VStack{
                                    Image(systemName: "flame.fill")
                                        .foregroundColor(.white)
                                    Text("Calories")
                                        .font(.caption)
                                    Text("756cal")
                                        .bold()
                                }.foregroundColor(.white)
                                
                                Rectangle()
                                    .fill(.white)
                                    .frame(width: 1)
                                VStack{
                                    Image(systemName: "dumbbell.fill")
                                        .foregroundColor(.white)
                                    Text("Weight")
                                        .font(.caption)
                                    Text("103lbs")
                                        .bold()
                                }.foregroundColor(.white)
                                
                                
                            }.padding(.bottom,35)
                            
                            RoundedRectangle(cornerRadius: 30)
                                .fill(.white)
                                .frame(width: 390,height: 560)
                                .overlay {
                                    VStack{
                                        ForEach(ProfileArray){data in Profile(list: data)
                                            if  ProfileArray.last?.id != data.id{
                                                Divider()
                                                    .padding(.horizontal)
                                            }
                                            
                                            
                                        }.padding(.vertical,-8)
                                        
                                        Spacer()
                                    } .padding(.top)                           }
                        }
                    }
                }
            }
         Rectangle()
                .fill(.black.opacity(0.3))
                .ignoresSafeArea()
            
            Rectangle()
                .fill(.white)
                .frame(width: 350, height: 430)
                .cornerRadius(40)
                .padding(.bottom,30)
            VStack{
                Image( "logout")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .padding()
                    .foregroundColor(Color.lightGray)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(60)
                
                Text("Are you sure to log out of your account?")
                    .font(.title3)
                    .padding()
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
               
                Button(action:{}) {
                    Text("Log Out")
                        .fontWeight(.regular)
                        .frame(width: 180,height: 20)
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.tiffany)
                        .cornerRadius(40)
                }
                Button(action:{}) {
                    Text("Cancel")
                        .fontWeight(.regular)
                        .frame(width: 180,height: 20)
                        .font(.title3)
                        .foregroundColor(.tiffany)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(40)
                }
                
                
            }
        }
    }
    
    func Profile(list: ProfileData2)-> some View{
        HStack{
            Image(systemName: list.image)
                .resizable()
                .frame(width: 20,height: 20)
                .foregroundColor(list.imageColor)
                .padding()
                .background(.lightGreen)
                .clipShape(Circle())
            Text(list.title)
                .foregroundColor(list.titleColor)
                .bold()
            Spacer()
            Image(systemName: "chevron.right")
            
        }.padding(.horizontal,20)
            .padding(.vertical)
    }
    
}

#Preview {
    LogoutView()
}
