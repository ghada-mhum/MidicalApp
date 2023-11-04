//
//  FindDoctorView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI
struct CatogoriesModel2: Identifiable {
  let id = UUID()
  let title: String
  let ImageName: String
 
}
struct TopDoctorModel3: Identifiable {
  let id = UUID()
  let ImageName: String
  let title: String
    let subTitle: String
    let review: String
    let location: String
}

struct RecentDoctorsModel: Identifiable {
  let id = UUID()
  let title: String
  let ImageName: String
 
}
struct FindDoctorView: View {
    @State var searchInput = ""
    
    let CatogoriesArray2: Array<CatogoriesModel2> = [CatogoriesModel2(title: "General", ImageName: "doctorIcon"),CatogoriesModel2(title: "Specialist", ImageName: "Lung"),CatogoriesModel2(title: "Dentist", ImageName: "dent"),CatogoriesModel2(title: "Psychiatrist", ImageName: "psych")]
    let CatogoriesArray3: Array<CatogoriesModel2> = [CatogoriesModel2(title: "Covid-19", ImageName: "covid"),CatogoriesModel2(title: "Surgeon", ImageName: "surgeon"),CatogoriesModel2(title: "Cardiologist", ImageName: "cardi")]
    
    let TopDoctorArray3: Array<TopDoctorModel3> = [TopDoctorModel3(ImageName: "TD1", title: "Dr.Marcus", subTitle: "Chardilogist", review: "4,7", location: "800m away"),TopDoctorModel3(ImageName: "TD2", title: "Dr.Maria", subTitle: "Psychologist", review: "4,9", location: "1,5km away"),TopDoctorModel3(ImageName: "TD3", title: "Dr.Maria", subTitle: "Psychologist", review: "4,9", location: "1,5km away"),TopDoctorModel3(ImageName: "TD4", title: "Dr.Maria", subTitle: "Psychologist", review: "4,9", location: "1,5km away"),TopDoctorModel3(ImageName: "TD5", title: "Dr.Maria", subTitle: "Psychologist", review: "4,9", location: "1,5km away")]
    
    let RecentDoctorsArray: Array<RecentDoctorsModel> = [RecentDoctorsModel(title: "Drr.Marcus", ImageName: "TD1"),RecentDoctorsModel(title: "Dr.Maria", ImageName: "TD2"),RecentDoctorsModel(title: "Dr.Stevi", ImageName: "TD3"),RecentDoctorsModel(title: "Dr.Luka", ImageName: "TD4"),RecentDoctorsModel(title: "Dr.Luka", ImageName: "TD5")]
    var body: some View {
        NavigationStack{
            HStack{
                Image(systemName: "chevron.left")
                    .padding(.leading,-120)
           
                Text("Find Doctor")
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
                    HStack{
                        Text("Category")
                            .font(.title2)
                            .bold()
                            .padding()
                        Spacer()
                    }
                    
                  
                        HStack(spacing: 20) {
                            ForEach(CatogoriesArray2) { data in
                                CatogoryFunc(card: data)
                            }
                        }.padding()
                    
                 
                    HStack(spacing: 20) {
                            ForEach(CatogoriesArray3) { data in
                                CatogoryFunc(card: data)
                            }
                        Spacer()
                        }.padding()
                    HStack{
                        Text("Recommended Doctors")
                            .font(.title2)
                            .padding()
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack(spacing: 20) {
                                ForEach(TopDoctorArray3) { data in
                                    TopDoctor(card: data)
                                }
                            Spacer()
                            }.padding()
                    }
                    HStack{
                        Text("Your Recent Doctors")
                            .font(.title2)
                            .padding()
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack(spacing: 20) {
                                ForEach(RecentDoctorsArray) { data in
                                    RecentDoctors(card: data)
                                }
                            Spacer()
                            }.padding()
                    }
                    Spacer()
                }
            }
        }
    }
    func RecentDoctors(card: RecentDoctorsModel)-> some View{
        VStack{
            Image(card.ImageName)
                .resizable()
                .frame(width: 100,height: 100)
                .clipShape(Circle())
        
            Text(card.title)
        }
    }
    func CatogoryFunc(card: CatogoriesModel2)-> some View{
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
                .font(.callout)
        }
    }
    
    func TopDoctor(card: TopDoctorModel3)-> some View{
        RoundedRectangle(cornerRadius: 25.0)
            .fill(.gray.opacity(0.1))
            .frame(width: 330,height: 170)
            .overlay(
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.white)
                .stroke(.gray.opacity(0.2))
                .frame(width: 350,height: 150)
                .offset(CGSize(width: 0, height: -10.0))
                .overlay(
                    HStack{
                        Image(card.ImageName)
                            .resizable()
                            .frame(width: 100,height: 100)
                            .clipShape(Circle())
                            .padding(.leading,8)
                        
                        VStack(alignment: .leading){
                            Text(card.title)
                                .font(.title2)
                            Text(card.subTitle)
                                .font(.callout)
                                .foregroundColor(.gray)
                            
                            Divider()
                                .padding(.trailing)
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
                        }.padding(.leading)
                       
                        Spacer()
                    }.padding(.leading)
                        .padding(.bottom)
                )
                
                
            )
           
    }
    
}

#Preview {
    FindDoctorView()
}
