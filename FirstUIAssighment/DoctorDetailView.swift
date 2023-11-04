//
//  DoctorDetailView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI
struct WeekDays: Identifiable {
  let id = UUID()
  let Day: String
  let Date: String
@State  var isClicked: Bool = false
 
}
struct Times: Identifiable{
    let id = UUID()
    let time: String
@State  var isClicked: Bool = false
}

struct DoctorDetailView: View {
//    @State var isClicked = false
//    @State var SelectedTime = false
    @State var WeekDaysArray: Array<WeekDays> = [WeekDays(Day: "Mon", Date: "21"),WeekDays(Day: "Tue", Date: "22" ,isClicked:false ),WeekDays(Day: "Wed", Date: "23",isClicked: true),WeekDays(Day: "Thu", Date: "24",isClicked: false),WeekDays(Day: "Fri", Date: "25",isClicked: false),WeekDays(Day: "Sat", Date: "26",isClicked: false),WeekDays(Day: "Sun", Date: "27",isClicked: false)]
    let TimesArray1: Array<Times> = [Times(time: "09:00 AM", isClicked: false),
                                     Times(time: "10:00 AM", isClicked: false),
                                     Times(time: "11:00 AM", isClicked: true)]
    let TimesArray2: Array<Times> = [Times(time: "12:00 PM", isClicked: false),
                                     Times(time: "01:00 PM", isClicked: false),
                                     Times(time: "02:00 PM", isClicked: false)]
    let TimesArray3: Array<Times> = [Times(time: "02:00 PM", isClicked: false),
                                     Times(time: "03:00 AM", isClicked: false),
                                     Times(time: "09:00 AM", isClicked: false)]
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
                            HStack{
                                Image("TD1")
                                    .resizable()
                                    .frame(width: 130,height: 130)
                                    .padding(.leading,8)
                                
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
                    
                    HStack{
                        Text("About")
                            .bold()
                        Spacer()
                    }.padding()
                    HStack{
                        Text("Lorem ipsum dolor...")
                            .foregroundColor(.gray)
                        Text("Read more")
                            .foregroundColor(.tiffany)
                        Spacer()
                    }.padding(.horizontal)
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 20) {
                            ForEach(WeekDaysArray) { data in
                                WeekDaysFunc(card: data)
                               
                            }
                        }.padding()
                    }

                    
                    
                    
                   Divider()
                        .padding(.horizontal,20)
                        .padding(.vertical)
                
                    HStack(spacing: 10) {
                        ForEach(TimesArray1) { data in
                        Timing(card: data)
                        }
                    }
                    HStack(spacing: 10) {
                        ForEach(TimesArray2) { data in
                        Timing(card: data)
                        }
                    }
                    HStack(spacing: 10) {
                        ForEach(TimesArray3) { data in
                        Timing(card: data)
                        }
                    }
                    
                    HStack{
                        Image(systemName: "ellipsis.message")
                            .resizable()
                            .frame(width: 30,height: 30)
                            .foregroundColor(.tiffany)
                            .padding()
                            .background(.lightGreen)
                            .cornerRadius(20)
                        Button(action:{
                          
                            
                        }) {
                            Text("Book Apointment")
                                .fontWeight(.regular)
                                .frame(width: 230,height: 20)
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
        }
    }
    
     func WeekDaysFunc(card: WeekDays)-> some View{
     
         Button {
             card.isClicked.toggle()
        } label: {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(card.isClicked ? .tiffany : .white)
                .stroke(.gray.opacity(0.2))
                .frame(width: 80,height: 100)
                .overlay(
                    VStack{
                        Text(card.Day)
                            .foregroundColor(card.isClicked ? .white : .gray)
                        Text(card.Date)
                            .font(.title)
                            .bold()
                            .foregroundColor(card.isClicked ? .white : .black)
                    }
                )
        }
    }
    
    
    
    func Timing(card: Times)-> some View{
        Button(action: {
            card.isClicked.toggle()
        }, label: {
            RoundedRectangle(cornerRadius: 20)
                .fill(card.isClicked ? .tiffany : .white)
                .stroke(.tiffany)
                .frame(width: 120,height: 50)
                .overlay(
                    Text(card.time)
                        .foregroundColor(card.isClicked ? .white : .black)
                )

        })
    }
}

#Preview {
    DoctorDetailView()
}
