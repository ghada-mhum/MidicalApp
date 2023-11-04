//
//  TopDoctorView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI
struct TopDoctorModel2: Identifiable {
  let id = UUID()
  let ImageName: String
  let title: String
    let subTitle: String
    let review: String
    let location: String
}
struct TopDoctorView: View {
    let TopDoctorArray2: Array<TopDoctorModel2> = [TopDoctorModel2(ImageName: "TD1", title: "Dr.Marcus", subTitle: "Chardilogist", review: "4,7", location: "800m away"),TopDoctorModel2(ImageName: "TD2", title: "Dr.Maria", subTitle: "Psychologist", review: "4,9", location: "1,5km away"),TopDoctorModel2(ImageName: "TD3", title: "Dr.Maria", subTitle: "Psychologist", review: "4,9", location: "1,5km away"),TopDoctorModel2(ImageName: "TD4", title: "Dr.Maria", subTitle: "Psychologist", review: "4,9", location: "1,5km away"),TopDoctorModel2(ImageName: "TD5", title: "Dr.Maria", subTitle: "Psychologist", review: "4,9", location: "1,5km away")]
    var body: some View {
        NavigationStack{
            HStack{
                Image(systemName: "")
                Spacer()
                Text("Top Doctor")
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }.padding()
            ScrollView{
                VStack{
                 
                    
                    VStack(spacing: 20) {
                        ForEach(TopDoctorArray2) { data in
                            TopDoctor(card: data)
                        }
                    }.padding()
                    Spacer()
                }
            }
//            .navigationTitle("Top Doctor")
      
        }
    }
    func TopDoctor(card: TopDoctorModel2)-> some View{
        RoundedRectangle(cornerRadius: 20)
            .fill(.white)
            .stroke(.gray.opacity(0.3))
            .frame(width: 350,height: 150)
            .overlay(
                HStack{
                    Image(card.ImageName)
                        .resizable()
                        .frame(width: 130,height: 130)
                        .padding(.leading,8)
                    
                    VStack(alignment: .leading){
                        Text(card.title)
                        Text(card.subTitle)
                            .font(.callout)
                            .foregroundColor(.gray)
                        
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
                        
                    }.padding(.horizontal)
                    
                   
                    Spacer()
                }
            )
    }
}
#Preview {
    TopDoctorView()
}
