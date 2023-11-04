//
//  DrugsDetailView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 18/04/1445 AH.
//

import SwiftUI

struct DrugsDetailView: View {
    var body: some View {
        NavigationStack{
            HStack{
                Image(systemName: "chevron.left")
                    Spacer()
                
                Text("Articles")
                    .bold()
                Spacer()
                
                Image(systemName: "cart")
                
            }.padding()
            ScrollView{
                VStack{
                 Image("drug5")
                        .resizable()
                        .frame(width: 300,height: 300)
                    
                    HStack{
                        
                        VStack(alignment: .leading){
                            Text("OBH Combi")
                                .bold()
                                .font(.title2)
                            Text("75ml")
                                .foregroundColor(.gray)
                            HStack{
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Text("4.0")
                            }.foregroundColor(.tiffany)
                            .padding(.horizontal,0)
                        }
                        Spacer()
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.red.opacity(0.8))
                    }.padding(.horizontal)
                    
                    HStack{
                        Image(systemName: "minus")
                            .resizable()
                            .frame(width: 20,height: 3)
                            .foregroundColor(.gray)
                        Text("1")
                            .font(.title)
                            .bold()
                            .padding(.horizontal)
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .bold()
                            .padding(8)
                            .background(.tiffany)
                        Spacer()
                        Text("$9.99")
                            .font(.title)
                            .bold()
                    }.padding()
                    HStack{
                        VStack(alignment: .leading){
                            Text("Description")
                                .bold()
                                .padding(.bottom)
                            HStack{
                                Text("OBH COMBI is acough medicin containing...")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                Text("Read more")
                                    .font(.caption)
                                    .foregroundColor(.tiffany)
                            }
                        }
                        Spacer()
                    }.padding(.horizontal)
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "cart")
                            .resizable()
                            .frame(width: 30,height: 30)
                            .foregroundColor(.tiffany)
                            .padding()
                            .background(.lightGreen)
                            .cornerRadius(20)
                        Button(action:{
                          
                            
                        }) {
                            Text("Buy Now")
                                .fontWeight(.regular)
                                .frame(width: 230,height: 20)
                                .font(.title3)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.tiffany)
                                .cornerRadius(40)
                                .padding(20)
                        }
                    }.padding(.top,80)
                }
            }
        }
    }
}

#Preview {
    DrugsDetailView()
}
