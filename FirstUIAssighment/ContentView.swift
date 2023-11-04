//
//  ContentView.swift
//  FirstUIAssighment
//
//  Created by ghada Mohammad on 07/04/1445 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
    
            DoctorsViewOne()
               
            DoctorsViewTwo()
                
            DoctorsViewThree()
                
            
        }
        .tabViewStyle(.page)
        .indexViewStyle(PageIndexViewStyle())
        
     
    }
}


