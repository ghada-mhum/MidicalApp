//
//  AmbulaceView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 18/04/1445 AH.
//

import SwiftUI
import MapKit
struct AmbulaceView: View {
    @State var searchInput = ""
    var body: some View {
        ZStack{
       
            NavigationStack{
             
                HStack{
                    Image(systemName: "chevron.left")
                        .padding(.leading,-120)
                    
                    Text("Ambulance")
                        .bold()
                    
                }.padding()
                Map()
                    .background(ignoresSafeAreaEdges: .bottom)
                    .overlay(
                        VStack{
                            RoundedRectangle(cornerRadius: 30)
                                .fill(.lightGray)
                                .stroke(.gray.opacity(0.2))
                                .frame(width: 350,height: 50)
                                .overlay(
                                    HStack{
                                        Image(systemName: "magnifyingglass")
                                            .padding(.horizontal)
                                            .foregroundColor(.gray)
                                        TextField("Search location, ZIP code...", text: $searchInput )
                                            .font(.callout)
                                    }
                                )
                            
                            Spacer()
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.lightGray)
                                .stroke(.gray.opacity(0.2))
                                .frame(width:380,height: 200)
                                .overlay(
                                    VStack{
                                        HStack{
                                            Text("Confirm your adress")
                                                .bold()
                                            Spacer()
                                        }.padding(.horizontal)
                                      Divider()
                                        
                                        HStack{
                                            Image(systemName: "mappin.and.ellipse")
                                                .resizable()
                                                .frame(width: 30,height: 40)
                                                .foregroundColor(.red.opacity(0.8))
                                            Text("Riyadh")
                                                .foregroundColor(.gray)
                                                .padding(.leading)
                                            Spacer()
                                        }.padding(.horizontal,30)
                                        
                                        Button(action:{}) {
                                            Text("confirm Location")
                                                .fontWeight(.regular)
                                                .frame(width: 300,height: 20)
                                                .font(.title3)
                                                .foregroundColor(.white)
                                                .padding()
                                                .background(Color.tiffany)
                                                .cornerRadius(40)
                                        }
                                    }
                                )
                          
                        }.padding()
                    
                    )
             
//                VStack{
//                    
//                    Spacer()
//                }
            }
        }
    }
}

#Preview {
    AmbulaceView()
}
