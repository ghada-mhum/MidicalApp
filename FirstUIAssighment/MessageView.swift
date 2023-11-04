//
//  MessageView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 17/04/1445 AH.
//

import SwiftUI
struct chatsData: Identifiable{
    let id = UUID()
    let ImageName: String
    let title: String
      let subTitle: String
      let image: String
    let imageColor: Color
      let time: String
}
struct MessageView: View {
    @State var preselectedIndex = 0
    let ChatsArray: Array<chatsData> = [chatsData(ImageName: "TD1", title: "Dr.Marcus", subTitle: "Hello", image: "1.circle.fill", imageColor: .tiffany, time: "10:24"),chatsData(ImageName: "TD2", title: "Dr.Marcus", subTitle: "Hello", image: "checkmark", imageColor: .gray, time: "10:24"),chatsData(ImageName: "TD3", title: "Dr.Marcus", subTitle: "Hello", image: "checkmark", imageColor: .gray, time: "10:24"),]
    var body: some View {
        NavigationStack{
            HStack{
                Text("Message")
                    .font(.title)
                    .bold()
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20,height: 20)
            }.padding()
            ScrollView{
               
                    VStack{
                        CustomSegmentedControl2(preselectedIndex: $preselectedIndex, options: ["All", "Group", "Private"])
                            .padding(.horizontal)
                            .padding(.bottom)
                        
                
                        VStack(spacing: 20) {
                            ForEach(ChatsArray) { data in
                                chats(chat: data)
                            }
                        }.padding()
                    Spacer()
                }
            }
        }
    }
    
    func chats(chat: chatsData)-> some View{
        HStack{
            Image(chat.ImageName)
                .resizable()
                .frame(width: 80,height: 80)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text(chat.title)
                    .font(.title3)
                    .bold()
                Text(chat.subTitle)
                    .foregroundColor(.gray)
                
            }
            Spacer()
            VStack(alignment: .trailing){
                Text(chat.time)
                    .foregroundColor(.gray)
                Image(systemName: chat.image)
                    .foregroundColor(chat.imageColor)
            }
        }.padding(.horizontal)
    }
}

#Preview {
    MessageView()
}
struct CustomSegmentedControl2: View {
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
