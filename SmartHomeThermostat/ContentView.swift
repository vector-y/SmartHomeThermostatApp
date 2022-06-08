//
//  ContentView.swift
//  SmartHomeThermostat
//
//  Created by Victor Tran on 6/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("Background")
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack(spacing: 0){
                        //MARK: Themrometer
                        ThermometerView()
                            .padding(.top, 30)
                            .padding(.bottom, 60)
                        
                        //MARK: Smart Systems
                        HStack(spacing: 20){
                            //MARK: Humidity Card
                            ClimateCard(iconName: "humidity.fill", index: "Inside Humidity", measure: "49%")
                            ClimateCard(iconName: "thermometer", index: "Outside Temp", measure: "-10°")
                        }
                    }
                }
            }
            .navigationTitle("Thermostat")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
