//
//  ContentView.swift
//  scrollablecities
//
//  Created by P Kris on 7/21/20.
//  Copyright © 2020 Aditi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView {
            
            VStack {
                    Card(imageName: "paris", cityName: "Paris")
                    Card(imageName: "london", cityName: "London")
                     Card(imageName: "lucerne", cityName: "Lucerne")
                     Card(imageName: "venice", cityName: "Venice")
                     Card(imageName: "rome", cityName: "Rome")
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

struct Card: View {
    @State var imageName : String
    @State var cityName :String
    var body: some View {
        ZStack {
            Image(imageName).resizable().aspectRatio(contentMode: .fit)
                .overlay(
                    Rectangle().opacity(0.1)
            )
            Text(cityName).font(.system(size: 60, weight: .black, design: .rounded))
                .foregroundColor(Color.white)
        }.cornerRadius(30)
    }
}
