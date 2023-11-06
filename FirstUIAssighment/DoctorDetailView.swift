//
//  test.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 22/04/1445 AH.
//

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

struct TimeSlotModel: Identifiable {
    let id = UUID()
    var time: String
}
struct DoctorDetailView: View {
  
    @State var WeekDaysArray: Array<WeekDays> = [WeekDays(Day: "Mon", Date: "21"),WeekDays(Day: "Tue", Date: "22" ,isClicked:false ),WeekDays(Day: "Wed", Date: "23",isClicked: true),WeekDays(Day: "Thu", Date: "24",isClicked: false),WeekDays(Day: "Fri", Date: "25",isClicked: false),WeekDays(Day: "Sat", Date: "26",isClicked: false),WeekDays(Day: "Sun", Date: "27",isClicked: false)]
  
    
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    @State private var timeSlots: [TimeSlotModel] = [
   
        "09:00 AM", "10:00 AM", "11:00 AM", "12:00 PM",
        "01:00 PM", "02:00 PM", "03:00 PM", "04:00 PM","07:00 PM"
   
    ].map { TimeSlotModel(time: $0) }
    
    @State private var selectedTimeSlotID: UUID?
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
                            ForEach(WeekDaysArray) { slot in
                                Days(card: slot, isClicked: slot.id == selectedTimeSlotID)
                                    .onTapGesture {
                                        // Select this slot and deselect others
                                        selectedTimeSlotID = slot.id == selectedTimeSlotID ? nil : slot.id
                                    }
                            }
                                
                            }
                        }.padding()
                    }
                    
                    
                    
                    
                    Divider()
                        .padding(.horizontal,20)
                        .padding(.vertical)
                    
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(timeSlots) { slot in
                            TimeSlotView(slot: slot, isSelected: slot.id == selectedTimeSlotID)
                                .onTapGesture {
                                    // Select this slot and deselect others
                                    selectedTimeSlotID = slot.id == selectedTimeSlotID ? nil : slot.id
                                }
                        }
                    }
                    .padding(.horizontal)
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
                                .font(.callout)
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.tiffany)
                                .cornerRadius(40)
                                .padding(20)
                        }
                    }.padding(.top,30)
                    Spacer()
                }.padding(.horizontal)
            }
        }
    }
    

    
    
    

    
    




#Preview {
    DoctorDetailView()
}

struct Days : View {
    var card: WeekDays
    var isClicked: Bool
    var body: some View {
      
            RoundedRectangle(cornerRadius: 15)
                .fill(isClicked ? .tiffany : .white)
                .stroke(.gray.opacity(0.2))
                .frame(width: 45,height: 65)
                .overlay(
                    VStack{
                        Text(card.Day)
                            .foregroundColor(isClicked ? .white : .gray)
                            .font(.caption)
                        Text(card.Date)
                            .font(.title3)
                            .bold()
                            .foregroundColor(isClicked ? .white : .black)
                    }
                )
        
    }
}
struct TimeSlotView: View {
    var slot: TimeSlotModel
    var isSelected: Bool
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 15)
            .fill(isSelected ? Color(.tiffany) : Color.clear)
            .stroke(isSelected ? Color.tiffany : Color.gray.opacity(0.5).opacity(0.5), lineWidth: 1)
            .frame(width: 110,height: 37)

            .overlay(
                Text(slot.time)
                    .font(.callout)
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .foregroundColor(isSelected ? .white : .black)
            )
        
//            .cornerRadius(20)
    }
}

