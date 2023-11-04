//
//  MyCartView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 18/04/1445 AH.
//

import SwiftUI

struct MyCartView: View {
    var body: some View {
        NavigationStack{
            HStack{
                Image(systemName: "chevron.left")
                    .padding(.leading,-120)
                
                Text("My Cart")
                    .bold()
                
            }.padding()
            ScrollView{
                
                VStack{
                RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .stroke(.lightGreen)
                        .frame(width: 350, height: 120)
                        .overlay(
                            HStack{
                                Image("drug2")
                                    .resizable()
                                    .frame(width: 50,height: 50)
                                    .padding(.leading,30)
                                Spacer()
                                VStack(alignment: .leading){
                                    Text("OBH Combi")
                                        .bold()
                                    Text("75ml")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    HStack{
                                        Image(systemName: "minus")
                                            .resizable()
                                            .frame(width: 10,height: 2)
                                            .foregroundColor(.gray)
                                            .padding(.leading,-8)
                                        Text("1")
                                         
                                            .bold()
                                            .padding(.horizontal)
                                        Image(systemName: "plus")
                                            .foregroundColor(.white)
                                            .bold()
                                            .padding(2)
                                            .background(.tiffany)
                                    
                                    }.padding()
                                }
                                Spacer()
                                
                                VStack(alignment: .trailing){
                                    Image(systemName: "trash")
                                    Spacer()
                                    Text("$9.99")
                                        .bold()
                                }.padding()
                            }
                        )
                    
                    
                    RoundedRectangle(cornerRadius: 20)
                            .fill(.white)
                            .stroke(.lightGreen)
                            .frame(width: 350, height: 120)
                            .overlay(
                                HStack{
                                    Image("drug4")
                                        .resizable()
                                        .frame(width: 50,height: 50)
                                        .padding(.leading,30)
                                    Spacer()
                                    VStack(alignment: .leading){
                                        Text("Panadol")
                                            .bold()
                                        Text("75ml")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                        HStack{
                                            Image(systemName: "minus")
                                                .resizable()
                                                .frame(width: 10,height: 2)
                                                .foregroundColor(.gray)
                                                .padding(.leading,-8)
                                            Text("1")
                                             
                                                .bold()
                                                .padding(.horizontal)
                                            Image(systemName: "plus")
                                                .foregroundColor(.white)
                                                .bold()
                                                .padding(2)
                                                .background(.tiffany)
                                        
                                        }.padding()
                                    }
                                    Spacer()
                                    
                                    VStack(alignment: .trailing){
                                        Image(systemName: "trash")
                                        Spacer()
                                        Text("$9.99")
                                            .bold()
                                    }.padding()
                                }
                            )
                    
                    HStack{
                        Text("Payment Detail")
                            .bold()
                        Spacer()
                    }.padding()
                    
                    VStack{
                        HStack{
                            Text("Subtotal")
                                .font(.callout)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("$25.98")
                                .font(.callout)
                                .foregroundColor(.gray)
                        }.padding(.horizontal)
                        HStack{
                            Text("Taxes")
                                .font(.callout)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("$1.00")
                                .font(.callout)
                                .foregroundColor(.gray)
                        }.padding(.horizontal)
                            .padding(.vertical,2)
                        HStack{
                            Text("Total")
                                .font(.callout)
                                .foregroundColor(.black)
                            Spacer()
                            Text("$25.98")
                                .font(.callout)
                                .foregroundColor(.black)
                                 }.padding(.horizontal)
                        
                        Divider()
                            .padding(.horizontal)
                            .foregroundColor(.lightGreen)
                        
                        HStack{
                            Text("Payment Method")
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
                                Text("$ 26.00")
                                    .bold()
                            }
                            
                            Button(action:{
                              
                                
                            }) {
                                Text("Checkout")
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
                    }
                    
                }
            }
        }
    }
}

#Preview {
    MyCartView()
}
