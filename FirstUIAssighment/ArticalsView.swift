//
//  ArticalsView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 18/04/1445 AH.
//

import SwiftUI
struct PopularAtriclesData: Identifiable{
    let id = UUID()
    let AtricleName: String
}
struct TrendingAtriclesData: Identifiable{
    let id = UUID()
    let AtricleImg: String
    let AtricleName: String
    let title: String
    let date: String
    let time: String
    
}
struct RelatedAtriclesData: Identifiable{
    let id = UUID()
    let AtricleImg: String
    let title: String
    let date: String
    let time: String
    
}
struct ArticalsView: View {
    @State var searchInput = ""
    
    let ArticlesArray: Array<PopularAtriclesData> = [PopularAtriclesData(AtricleName: "Covid-19"),
    PopularAtriclesData(AtricleName: "Diet"),
PopularAtriclesData(AtricleName: "Fitness"),
PopularAtriclesData(AtricleName: "Covid-19")]
    
    let ArticlesArray2: Array<TrendingAtriclesData> = [TrendingAtriclesData(AtricleImg: "art1", AtricleName: "covid-19", title: "Comparing the astraZeneca and Sinovac COVID-`19 VACCINES", date: "JAN 12,2022 ·", time: "6 min read"),TrendingAtriclesData(AtricleImg: "art2", AtricleName: "covid-19", title: "Comparing the astraZeneca and Sinovac COVID-`19 VACCINES", date: "JAN 12,2022 ·", time: "6 min read"),TrendingAtriclesData(AtricleImg: "art1", AtricleName: "covid-19", title: "Comparing the astraZeneca and Sinovac COVID-`19 VACCINES", date: "JAN 12,2022 ·", time: "6 min read"),TrendingAtriclesData(AtricleImg: "art1", AtricleName: "covid-19", title: "Comparing the astraZeneca and Sinovac COVID-`19 VACCINES", date: "JAN 12,2022 ·", time: "6 min read")]
    
    let ArticlesArray3: Array<RelatedAtriclesData> = [RelatedAtriclesData(AtricleImg: "art3", title: "The 25 Healthest fruits you can eat, According to a nutritionist", date: "Jan 10,2022 ·", time: "6 min read"),RelatedAtriclesData(AtricleImg: "art4", title: "The 25 Healthest fruits you can eat, According to a nutritionist", date: "Jan 10,2022 ·", time: "6 min read"),RelatedAtriclesData(AtricleImg: "art5", title: "The 25 Healthest fruits you can eat, According to a nutritionist", date: "Jan 10,2022 ·", time: "6 min read"),RelatedAtriclesData(AtricleImg: "art3", title: "The 25 Healthest fruits you can eat, According to a nutritionist", date: "Jan 10,2022 ·", time: "6 min read")]
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
                    
                    HStack{
                        Text("Popular Articles")
                            .bold()
                        Spacer()
                    }.padding()
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            ForEach(ArticlesArray){ art in Articles(Art: art)
                                
                            }
                        }.padding()
                    
                    }
                    HStack{
                        Text("Popular Articles")
                            .bold()
                        Spacer()
                        NavigationLink("See all", destination: Text(""))
                            .foregroundColor(.tiffany)
                        
                    }.padding()
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            ForEach(ArticlesArray2){ art in Articles2(art: art)
                                
                            }
                        }.padding(.horizontal)
                    
                    }
                    
                    HStack{
                        Text("Related Articles")
                            .bold()
                        Spacer()
                        NavigationLink("See all", destination: Text(""))
                            .foregroundColor(.tiffany)
                        
                    }.padding()
                    
                    ScrollView(showsIndicators: false){
                        VStack{
                            ForEach(ArticlesArray3){ art in Articles3(art: art)
                                
                            }
                        }.padding(.horizontal)
                    
                    }
                   
                    Spacer()
                }
            }
        }
    }
    func Articles3(art: RelatedAtriclesData)-> some View{
        RoundedRectangle(cornerRadius: 10)
            .fill(.white)
            .stroke(.lightGreen)
            .frame(width: 350,height: 100)
            .overlay(
                HStack{
                    Image(art.AtricleImg)
                        .resizable()
                        .frame(width: 80,height: 80)
                       
                    
                    VStack(alignment: .leading){
                        Text(art.title)
                            .font(.callout)
                            .bold()
                        
                        HStack{
                            Text(art.date)
                                .foregroundColor(.gray)
                                .font(.caption2)
                            Text(art.time)
                                .font(.caption2)
                                .foregroundColor(.tiffany)
                        }
                    }
                   Image(systemName: "bookmark.fill")
                        .foregroundColor(.tiffany)
                        .offset(y: -30)
                    
                }.padding(.horizontal,2)
            )
    }
    
    func Articles2(art: TrendingAtriclesData)-> some View{
        RoundedRectangle(cornerRadius: 10)
            .fill(.white)
            .stroke(.lightGreen)
            .frame(width: 160,height: 230)
            .overlay(
                VStack(alignment: .leading){
                    Image(art.AtricleImg)
                        .resizable()
                        .frame(width: 140,height: 100)
                        .padding(.top,10)
                        .padding(.leading,5)
                    
                    
                    Text(art.AtricleName)
                        .foregroundColor(.tiffany)
                        .font(.caption)
                        .padding(3)
                        .background(.lightGreen)
                    
                    Text(art.title)
                        .font(.caption)
                        .frame(height: 60)
                        .bold()
                    
                    HStack{
                        Text(art.date)
                            .foregroundColor(.gray)
                        Text(art.time)
                            .foregroundColor(.tiffany)
                    }.font(.caption2)
                    .padding(.top,-8)
                    
                    
                  Spacer()
                }
            )
        
    }
    func Articles(Art: PopularAtriclesData)-> some View{
        
        RoundedRectangle(cornerRadius: 10)
              .fill(.tiffany)
              .frame(width: 120,height: 60)
              .overlay(
                Text(Art.AtricleName)
                  .foregroundColor(.white)
                  .bold()
              )
    }
}

#Preview {
    ArticalsView()
}
