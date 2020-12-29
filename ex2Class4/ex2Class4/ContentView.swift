//
//  ContentView.swift
//  ex2Class4
//
//  Created by Abdulmohsen Al Rasheed on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var counters = [0, 0, 0]
    
    var body: some View {
        VStack (alignment: .trailing) {
            
            ThekerButton(counters: $counters[0], Theker: "استغفر الله", buttonColor: .black)
            ThekerButton(counters: $counters[1], Theker: "الحمدلله", buttonColor: .red)
            ThekerButton(counters: $counters[2], Theker: "لا اله الا الله", buttonColor: .green)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}

struct ThekerButton: View {
    
    @Binding var counters: Int
    let Theker: String
    let buttonColor: Color
    
    var body: some View {
        
        HStack {
            
            Text(Theker)
                .font(.largeTitle)
            
            Button(action: {
                counters += 1
            }, label: {
                
                Text("\(counters)")
                    .font(.largeTitle)
                
            }
            
            )
            .frame(width: 100.0, height: 100.0, alignment: .center)
            .foregroundColor(.white)
            .background(buttonColor)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .padding()
        }
        
    }
    
}
