//
//  ContentView.swift
//  backgroundChange
//
//  Created by aa on 2021/6/18.
//  Copyright © 2021 tku-student. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var redValue:Double
    @State var greenValue:Double
    @State var blueValue:Double
    
    var body: some View {
        ZStack{
            Color.init(red: redValue, green:greenValue, blue: blueValue)
            VStack{
                HStack{
                    myText(color: "R", value: redValue)
                    Spacer()
                    myText(color: "G", value: greenValue)
                    Spacer()
                    myText(color: "B", value: blueValue)
                }
                Spacer()
                Slider(value: $redValue)
                Slider(value: $greenValue)
                Slider(value: $blueValue)
                
            }.frame(width:UIScreen.main.bounds.size.width*0.8,height: UIScreen.main.bounds.height*0.8)
                        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        ContentView(redValue: 1.0, greenValue: 1.0, blueValue: 1.0)
    }
}

struct myText:View {
    var color:String
    var value:Double
    var body:some View{
        Text(color+":\(Int(value*255.0))").font(.title).fontWeight(.light)
    }
}

