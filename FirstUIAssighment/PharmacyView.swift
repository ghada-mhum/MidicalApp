//
//  PharmacyView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 18/04/1445 AH.
//

import SwiftUI
struct PopularProductsData: Identifiable{
    let id = UUID()
    let ProductImg: String
    let ProductName: String
    let Count: String
    let Price: String
    
}
struct PharmacyView: View {
    @State var searchInput = ""
    
    let ProductsArray: Array<PopularProductsData> = [PopularProductsData(ProductImg: "drug1", ProductName: "Panadol", Count: "20pcs", Price: "$15.99"),PopularProductsData(ProductImg: "drug2", ProductName: "Bodrex Herbal", Count: "20pcs", Price: "$15.99"),
        PopularProductsData(ProductImg: "drug3", ProductName: "Panadol", Count: "20pcs", Price: "$15.99"),
        PopularProductsData(ProductImg: "drug3", ProductName: "Konidin", Count: "20pcs", Price: "$15.99")
    ]
    let ProductsArray2: Array<PopularProductsData> = [PopularProductsData(ProductImg: "drug4", ProductName: "Panadol", Count: "20pcs", Price: "$15.99"),PopularProductsData(ProductImg: "drug2", ProductName: "Bodrex Herbal", Count: "20pcs", Price: "$15.99"),
        PopularProductsData(ProductImg: "drug3", ProductName: "Panadol", Count: "20pcs", Price: "$15.99"),
        PopularProductsData(ProductImg: "drug3", ProductName: "Konidin", Count: "20pcs", Price: "$15.99")
    ]
 
    var body: some View {
        NavigationStack{
            HStack{
                Image(systemName: "chevron.left")
                    .padding(.leading,-120)
                
                Text("Articles")
                    .bold()
                
            }.padding()
            ScrollView{
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
                                TextField("Find a doctor", text: $searchInput )
                                    .font(.callout)
                            }
                        )
                        .padding(.bottom)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.lightGreen)
                        .frame(width: 370,height: 160)
                        .overlay(
                            HStack{
                                VStack{
                                    Text("Order quickly with Prescription")
                                        .bold()
                                        .font(.title3)
                                        .frame(width: 200)
                                        .padding(.top)
                                        .padding(.leading)
                                    Button(action:{
                                        
                                        
                                    }) {
                                        Text("upload Prescription")
                                            .fontWeight(.regular)
                                            .frame(width: 150,height: 10)
                                        //                                        .font(.title3)
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(Color.tiffany)
                                            .cornerRadius(10)
                                            .padding(10)
                                            .padding(.leading)
                                    }
                                    
                                }
                                        Image("drug")
                                            .resizable()
                                            .frame(width: 170,height: 250)
                                    
                                
                            }
                            
                        )
                    
                    HStack{
                        Text("Popular Products")
                            .bold()
                        Spacer()
                        NavigationLink("See all", destination: Text(""))
                            .foregroundColor(.tiffany)
                        
                    }.padding()
               
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            ForEach(ProductsArray){ art in popularProducts(card: art)
                                
                            }
                        }.padding()
                    
                    }
                    
                    HStack{
                        Text("Products on sale")
                            .bold()
                        Spacer()
                        NavigationLink("See all", destination: Text(""))
                            .foregroundColor(.tiffany)
                        
                    }.padding()
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            ForEach(ProductsArray2){ art in popularProducts(card: art)
                                
                            }
                        }.padding()
                    
                    }
                    Spacer()
                }
            }
            
        }
    }
    
    func popularProducts(card: PopularProductsData)-> some View{
        RoundedRectangle(cornerRadius: 10)
            .fill(.white)
            .stroke(.lightGreen)
            .frame(width: 120,height: 160)
            .overlay(
                VStack(alignment: .leading){
                    Image(card.ProductImg)
                        .resizable()
                        .frame(width: 60,height: 60)
                        .padding(.leading,20)
                    Text(card.ProductName)
                        .font(.callout)
                        .bold()
                    Text(card.Count)
                        .font(.caption)
                        .foregroundColor(.gray)
                    HStack{
                        Text(card.Price)
                            Spacer()
                        Image(systemName: "plus.square.fill")
                            .resizable()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.tiffany)
                    }.padding(.horizontal,5)
                }.padding(.horizontal,5)
            )
    }
}
 

#Preview {
    PharmacyView()
}
