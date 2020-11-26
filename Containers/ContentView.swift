//
//  ContentView.swift
//  Containers
//
//  Created by Ez Heisenberg on 26/11/2020.
//  Copyright © 2020 Ez Heisenberg. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var align: HorizontalAlignment = .center
    @State var mot: String = "hello World"
    
    
    var body: some View {
        
        TabView{
            ZStackView().tabItem{
                VStack {
                    Image(systemName: "1.circle")
                    Text("ZStack")
                }
        }
            VStack{
                ColorVStack(align: $align)
                Divider()
                Spacer()
                HStack(alignment: .center, spacing: 35){
                    Button("Leading"){
                        withAnimation{
                            self.align = .leading
                            
                        }
                    }
                    Button("Center"){
                        withAnimation{
                            self.align = .center
                            
                        }
                    }
                    Button("Trailing"){
                        withAnimation{
                            self.align = .trailing
                            
                        }
                    }
                }.padding(30)
            }.tabItem{
                    VStack {
                        Image(systemName: "2.circle")
                        Text("VStack")
                    }
            }
            HStack{
                Text("Test HStack")
            }.tabItem{
                VStack {
                    Image(systemName: "3.circle")
                    Text("HStack")
                }
            }

        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ZStackView: View {
    var body: some View {
        ZStack{
            Color.gray
            
            RoundedRectangle(cornerRadius: 50)
                .fill(Color.white)
                .frame(width: 200, height: 200)
            
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            
            Text("Bravo")
                .font(.largeTitle)
                .foregroundColor(Color.white)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ColorVStack: View {
    @Binding var align: HorizontalAlignment
    var body: some View {
        VStack(alignment: align, spacing: 50){
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.red)
                .frame(width: 70, height: 30)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.orange)
                .frame(width: 200, height: 30)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow)
                .frame(width: 120, height: 30)
        }.padding(20)
    }
}
