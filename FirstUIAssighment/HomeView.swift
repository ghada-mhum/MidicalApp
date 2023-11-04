//
//  HomeView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI
struct CatogoriesModel: Identifiable {
  let id = UUID()
  let title: String
  let ImageName: String
 
}
struct TopDoctorModel: Identifiable {
  let id = UUID()
  let ImageName: String
  let title: String
    let subTitle: String
    let review: String
    let location: String
}
struct HomeView: View {
    @State var searchInput = ""
    
    let CatogoriesArray: Array<CatogoriesModel> = [CatogoriesModel(title: "Doctor", ImageName: "doctorIcon"),CatogoriesModel(title: "Pharmacy", ImageName: "plasterIcon"),CatogoriesModel(title: "Hospital", ImageName: "hospitalIcon"),CatogoriesModel(title: "Ambulance", ImageName: "EmrgCarIcon")]
    
    let TopDoctorArray: Array<TopDoctorModel> = [TopDoctorModel(ImageName: "TD1", title: "Dr.Marcus", subTitle: "Chardilogist", review: "4,7", location: "800m away"),TopDoctorModel(ImageName: "TD2", title: "Dr.Maria", subTitle: "Psychologist", review: "4,9", location: "1,5km away"),TopDoctorModel(ImageName: "TD3", title: "Dr.Maria", subTitle: "Psychologist", review: "4,9", location: "1,5km away")]
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    
                    HStack{
                        
                        Text("Find your desire health sotuion")
                            .frame(width: 300,alignment: .leading)
                        
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                        Image(systemName: "bell")
                            .foregroundColor(.gray)
                    }.padding()
                    
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.lightGray)
                        .stroke(.gray.opacity(0.2))
                        .frame(width: 350,height: 50)
                        .overlay(
                            HStack{
                                Image(systemName: "magnifyingglass")
                                    .padding(.horizontal)
                                    .foregroundColor(.gray)
                                TextField("Search doctor, drugs, articals...", text: $searchInput )
                                    .font(.callout)
                            }
                        )
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing: 20) {
                            ForEach(CatogoriesArray) { data in
                                CatogoryFunc(card: data)
                            }
                        }.padding()
                    }
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.lightGreen)
                        .frame(width: 370,height: 160)
                        .overlay(
                            HStack{
                                VStack{
                                    Text("Early protection for your family health")
                                        .bold()
                                        .font(.title3)
                                        .padding(.top)
                                        .padding(.leading)
                                    Button(action:{
                                        
                                        
                                    }) {
                                        Text("Learn more")
                                            .fontWeight(.regular)
                                            .frame(width: 130,height: 10)
                                        //                                        .font(.title3)
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(Color.tiffany)
                                            .cornerRadius(40)
                                            .padding(.leading,-20)
                                    }
                                    
                                }
                                
                                Circle()
                                    .fill(.white.opacity(0.5))
                                    .frame(width: 120)
                                    .overlay(
                                        Image("doctor1")
                                            .resizable()
                                            .frame(width: 100,height: 150)
                                    )
                                
                            }
                            
                        )
                    HStack{
                        Text("Top Doctor")
                            .bold()
                        Spacer()
                        
                        NavigationLink( "See all", destination: TopDoctorView())
                            .foregroundColor(.tiffany)

                    }.padding()
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing: 20) {
                            ForEach(TopDoctorArray) { data in
                                TopDoctorFunc(card: data)
                            }
                        }.padding()
                    }
                    
                    Spacer()
                }
            }
        }
    }
    func CatogoryFunc(card: CatogoriesModel)-> some View{
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .frame(width: 60,height: 60)
                .shadow( color: .gray.opacity(0.1),radius: 4 )
                .overlay(
                    Image(card.ImageName)
                        .resizable()
                        .frame(width: 40,height: 40)
                )
            
            Text(card.title)
                .foregroundColor(.gray)
        }
    }
    
    func TopDoctorFunc(card: TopDoctorModel)-> some View{
        RoundedRectangle(cornerRadius: 10)
            .fill(.white)
            .frame(width: 160,height: 220)
            .shadow(color:.gray.opacity(0.2) ,radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .overlay(
                VStack{
                    Image(card.ImageName)
                        .resizable()
                        .frame(width: 100,height: 100)
                        .clipShape(Circle())
                    Text(card.title)
                        
                    Text(card.subTitle)
                        .font(.callout)
                        .foregroundColor(.gray)
                    HStack{
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.lightGreen)
                            .frame(width: 45,height: 25)
                            .overlay(
                                HStack{
                                    
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.tiffany)
                                    Text(card.review)
                                        .foregroundColor(.tiffany)
                                    
                                }.font(.caption)
                            )
                      
                        HStack{
                            Image(systemName: "mappin.circle.fill")
                                .foregroundColor(.gray)
                            Text(card.location)
                                .foregroundColor(.gray)
                            
                        }.font(.caption)
                        
                    }
                }
            )
    }

}

#Preview {
    HomeView()
}
