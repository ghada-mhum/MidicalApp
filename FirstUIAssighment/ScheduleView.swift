//
//  ScheduleView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI
struct cardInfo: Identifiable{
    let id = UUID()
    let ImageName: String
    let title: String
      let subTitle: String
      let date: String
      let time: String
}
struct ScheduleView: View {
    @State var preselectedIndex = 0
    
    let ScheduleArray: Array<cardInfo> = [cardInfo(ImageName: "TD1", title: "Dr.Marcus", subTitle: "Doctor", date: "26/06/2023", time: "10:30 Am"),cardInfo(ImageName: "TD2", title: "Dr.Alysa", subTitle: "Doctor", date: "26/06/2023", time: "10:30 Am")]
    var body: some View {
        NavigationStack{
            HStack{
                Text("Schedule")
                    .font(.title)
                    .bold()
                
             Spacer()
                
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 20,height: 20)
            }.padding()
            ScrollView{
                VStack{
                    CustomSegmentedControl1(preselectedIndex: $preselectedIndex, options: ["Upcoming", "Completed", "Canceled"])
                        .padding(.horizontal)
                        .padding(.bottom)
                    
                    VStack(spacing: 20) {
                        ForEach(ScheduleArray) { data in
                            scheduleCard(card: data)
                        }
                    }.padding()
                    
                Spacer()
                }
            }
        }
    }
    
    func scheduleCard (card: cardInfo)-> some View{
        RoundedRectangle(cornerRadius: 20)
            .fill(.white)
            .stroke(.gray.opacity(0.2))
            .frame(width: 350,height: 180)
            .overlay(
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text(card.title)
                                .bold()
                            Text(card.subTitle)
                                .foregroundColor(.gray)
                          
                        }
                        Spacer()
                        Image(card.ImageName)
                            .resizable()
                            .frame(width: 60,height: 60)
                            .clipShape(Circle())
                    }.padding()
                    
                    HStack{
                        HStack{
                            Image(systemName: "calendar")
                            Text(card.date)
                        }
                        HStack{
                            Image(systemName: "clock")
                            Text(card.time)
                        }
                        HStack{
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 8,height: 8)
                                .foregroundColor(.green)
                            Text("Confirmed")
                        }
                        Spacer()
                    }.padding(.horizontal)
                    .foregroundColor(.gray)
                        .font(.caption)
                    
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.lightGreen)
                                .frame(width: 150, height: 40)
                                .overlay(
                                Text("Cancle")
                                    .foregroundColor(.black)
                                  
                                )
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.tiffany)
                                .frame(width: 150, height: 40)
                                .overlay(
                                Text("Reschedule")
                                    .foregroundColor(.white)
                                    .bold()
                                )
                        })
                    }
                    
                  
                    Spacer()
                }
            )
        

    }
}

#Preview {
    ScheduleView()
}
struct CustomSegmentedControl1: View {
    @Binding var preselectedIndex: Int
    var options: [String]
    let color = Color.white
    var body: some View {
        HStack(spacing: 0) {
            ForEach(options.indices, id:\.self) { index in
                ZStack {
                    Rectangle()
                        .fill(.lightGreen)
                       
                    
                    Rectangle()
                        .fill(.tiffany)
                        .cornerRadius(5)
                        .padding(2)
                        .opacity(preselectedIndex == index ? 1 : 0.01)
                        .onTapGesture {
                                withAnimation(.interactiveSpring()) {
                                    preselectedIndex = index
                                }
                            }
                }
                .overlay(
                    Text(options[index])
                        .foregroundColor(preselectedIndex == index ? .white : .black)
                )
            }
        }
        .frame(height: 40)
        .cornerRadius(10)
    }
}
