//
//  PaymentSuccessView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI

struct PaymentSuccessView: View {
    var body: some View {
      
            NavigationStack{
                HStack{
                    Image(systemName: "chevron.left")
                        .padding(.leading,-120)
                    
                    Text("Appointment")
                        .bold()
                    
                }.padding()
                ScrollView{
                    VStack{
                      
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.white)
                                .stroke(.gray.opacity(0.2))
                                .frame(width: 350,height: 150)
                                .overlay(
                            HStack{
                            Image("TD1")
                                .resizable()
                                .frame(width: 130,height: 130)
                                .padding(.leading,-5)
                            
                           VStack(alignment: .leading){
                                Text("Dr.Marcus")
                                Text("sub title")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(.lightGreen)
                                    .frame(width: 45,height: 25)
                                    .overlay(
                                        HStack{
                                            
                                            Image(systemName: "star.fill")
                                                .foregroundColor(.tiffany)
                                            Text("4,7")
                                                .foregroundColor(.tiffany)
                                            
                                        }.font(.caption)
                                    )
                                
                                HStack{
                                    Image(systemName: "mappin.circle.fill")
                                        .foregroundColor(.gray)
                                    Text("800m away")
                                        .foregroundColor(.gray)
                                    
                                }.font(.caption)
                                
                            }.padding(.horizontal)
                            
                            
                            Spacer()
                        }.padding()
                            )
                        HStack{
                            Text("Date")
                                .bold()
                            Spacer()
                            Text("Change")
                                .foregroundColor(.gray)
                                .font(.callout)
                        }.padding(.horizontal)
                            .padding(.top)
                        HStack{
                            Image(systemName: "calendar")
                                .resizable()
                                .foregroundColor(.tiffany)
                                .frame(width: 20,height: 20)
                                .padding(10)
                                .background(.lightGreen)
                                .cornerRadius(50)
                            Text("Wednesday, Jun 23, 2022 | 10:00 AM")
                                .font(.callout)
                            Spacer()
                        }.padding(.horizontal)
                        Divider()
                            .padding(.horizontal)
                        
                        HStack{
                            Text("Reason")
                                .bold()
                            Spacer()
                            Text("Change")
                                .foregroundColor(.gray)
                                .font(.callout)
                        }.padding(.horizontal)
                            .padding(.top)
                        HStack{
                            Image(systemName: "square.and.pencil.circle")
                                .resizable()
                                .foregroundColor(.tiffany)
                                .frame(width: 25,height: 25)
                                .padding(10)
                                .background(.lightGreen)
                                .cornerRadius(50)
                            Text("Wednesday, Jun 23, 2022 | 10:00 AM")
                                .font(.callout)
                            Spacer()
                        }.padding(.horizontal)
                        Divider()
                            .padding(.horizontal)
                        VStack{
                            HStack{
                                Text("Payment Detail")
                                    .bold()
                                Spacer()
                            }.padding()
                            HStack{
                                Text("Consultation")
                                    .foregroundColor(.gray.opacity(0.5))
                                    .bold()
                                
                                Spacer()
                                Text("$60.00")
                            }.padding(.horizontal)
                                .padding(.vertical,5)
                            HStack{
                                Text("Admin Fee")
                                    .foregroundColor(.gray.opacity(0.5))
                                    .bold()
                                
                                Spacer()
                                Text("$01.00")
                            }.padding(.horizontal)
                                .padding(.vertical,5)
                            HStack{
                                Text("Additional Discounts")
                                    .foregroundColor(.gray.opacity(0.5))
                                    .bold()
                                
                                Spacer()
                                Text("-")
                            }.padding(.horizontal)
                                .padding(.vertical,5)
                            HStack{
                                Text("Total")
                                    .bold()
                                
                                Spacer()
                                Text("$61.00")
                            }.padding(.horizontal)
                                .padding(.vertical,5)
                            
                        }
                        
                        Divider()
                            .padding(.horizontal)
                        
                        HStack{
                            Text("Payment Detail")
                                .bold()
                            Spacer()
                        }.padding()
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .stroke(.gray.opacity(0.2))
                            .frame(width: 350,height: 50)
                            .overlay(
                                HStack{
                                    Image(systemName: "creditcard.fill")
                                        .foregroundColor(.tiffany)
                                    Spacer()
                                    Text("Change")
                                        .foregroundColor(.gray)
                                        .font(.callout)
                                }.padding()
                            )
                        HStack{
                            VStack(alignment: .leading){
                               Text("Total")
                                    .foregroundColor(.gray)
                                Text("$ 61.00")
                                    .bold()
                            }
                            
                            Button(action:{
                              
                                
                            }) {
                                Text("Booking")
                                    .fontWeight(.regular)
                                    .frame(width: 180,height: 20)
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.tiffany)
                                    .cornerRadius(40)
                                    .padding(20)
                            }
                        }
                        Spacer()
                    }
                }
            }.overlay(
                
            Rectangle()
                .fill(.black.opacity(0.4))
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
                                
                                Text("Payment Success")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Text("Your payment has been successful,you can have a consulultion session with your trusted doctor")
                                    .frame(width: 340)
                                    .font(.callout)
                                    .foregroundColor(.graygray)
                                    .multilineTextAlignment(.center)
                                Button(action:{}) {
                                    Text("Chat Doctor")
                                        .fontWeight(.regular)
                                        .frame(width: 180,height: 20)
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
    PaymentSuccessView()
}
