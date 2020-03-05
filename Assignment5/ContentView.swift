//
//  ContentView.swift
//  Assignment5
//
//  Created by Siyuan Zan on 3/2/20.
//  Copyright © 2020 Siyuan Zan. All rights reserved.
//

import SwiftUI
struct Signal {
    // Range: 0 - 10
    var intValue: Int
    // Range: 0 - 1.0
    var floatValue: Float
    // True or False
    var toggleValue: Bool
}
struct ContentView: View {
    @State var signal = Signal(intValue: 0, floatValue: 0, toggleValue: false)
    var body: some View {
        VStack{
           
            
            ZStack{
            
                    SiyuanVisualizer(signal:$signal)
                
            }
             .offset(y:300)
            ZStack() {
                           SiyuanController(signal: $signal)
                           
                       }
                       .offset(y:-300)
            
        }
        .offset(y:-20)

        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
