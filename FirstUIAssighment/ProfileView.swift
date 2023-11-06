//
//  ProfileView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 18/04/1445 AH.
//

import SwiftUI
struct ProfileData: Identifiable{
    let id  = UUID()
    let image: String
    let imageColor: Color
    let title: String
    let titleColor:Color
    
}
struct ProfileView: View {
    let ProfileArray: Array<ProfileData> = [ProfileData(image: "heart", imageColor: .tiffany, title: "My Saved", titleColor: .black ),ProfileData(image: "newspaper", imageColor: .tiffany, title: "Appointment", titleColor: .black),ProfileData(image: "creditcard", imageColor: .tiffany, title: "Payment method", titleColor: .black),ProfileData(image: "ellipsis.bubble", imageColor: .tiffany, title: "FAQs", titleColor: .black),ProfileData(image: "info.circle", imageColor: .red, title: "Logout", titleColor: .red)]
    var body: some View {
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
    }
    
    func Profile(list: ProfileData)-> some View{
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
    ProfileView()
}
