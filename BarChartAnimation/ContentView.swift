//
//  ContentView.swift
//  BarChartAnimation
//
//  Created by admin on 12/29/19.
//  Copyright © 2019 admin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var pickerSelctedItem = 0
    @State var dataPoints: [[CGFloat]] = [ [50, 100, 150, 70, 64, 90, 106], [150, 80, 50, 85, 110, 130, 50], [52, 180, 55, 100, 76, 97, 175] ]
    var body: some View {
        ZStack{
            
            Color("appBackground").edgesIgnoringSafeArea(.all )
            VStack{
                Text("Calory Intake")
                    .font(.system(size: 34))
                    .fontWeight(.heavy)
                
                Picker(selection: $pickerSelctedItem, label: Text("")) {
                    Text("Weekday").tag(0)
                    Text("Afternoon").tag(1)
                    Text("Evening").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal , 24)
                
                HStack (spacing: 23){
                    VStack{
                        
                            BarView(Value: dataPoints[pickerSelctedItem][0])
                        
                        Text("Su").padding(.top, 8)
                    }
                   VStack{
                      
                           BarView(Value: dataPoints[pickerSelctedItem][1])
                       
                       Text("M").padding(.top, 8)
                   }
                    VStack{
                        
                            BarView(Value: dataPoints[pickerSelctedItem][2])
                        
                        Text("T").padding(.top, 8)
                    }
                    VStack{
                        
                            BarView(Value: dataPoints[pickerSelctedItem][3])
                        
                        Text("W").padding(.top, 8)
                    }
                    VStack{
                        
                            BarView(Value: dataPoints[pickerSelctedItem][4])
                        
                        Text("TH").padding(.top, 8)
                    }
                    VStack{
                        
                            BarView(Value: dataPoints[pickerSelctedItem][5])
                        
                        Text("F").padding(.top, 8)
                    }
                    VStack{
                        
                            BarView(Value: dataPoints[pickerSelctedItem][6])
                        
                        Text("Sa").padding(.top, 10)
                    }
                    
                   }.padding(.top, 24)
                    .animation(.default)
                }
            }
        }
    }

struct BarView: View
{
    
    var Value: CGFloat
    var body: some View {
        VStack{
            ZStack (alignment: .bottom){
                Capsule().frame(width: 30 , height: 200)
                    .foregroundColor(Color("CapsulesColor"))
                Capsule().frame(width: 30 , height: Value)
                    .foregroundColor(Color("Capsules2Color"))
            }
            
        }
    }
}
