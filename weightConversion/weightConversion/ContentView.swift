//
//  ContentView.swift
//  weightConversion
//
//  Created by aa on 2021/6/18.
//  Copyright © 2021 tku-student. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var wk:Double=0.0
    @State var wc:Double=0.0
    @State var wl:Double=0.0


    var body: some View {
        VStack{
            Text("公斤kilogram").bold().font(.system(size: 30))
            TextField("kg", value:$wk, formatter: NumberFormatter.threeDecimal,
                      onEditingChanged: {(Change) in
                        self.wc=self.wk*2.0
                        self.wl=self.wk*2.20462262
            })
                .font(.system(size: 30)).foregroundColor(.white)
                .background(Color.orange).padding(.horizontal,100)
            Text("斤china-catty").bold().font(.system(size: 30))
            TextField("china-catty", value:$wc, formatter: NumberFormatter.threeDecimal,
                      onEditingChanged: {(Change) in
                        self.wk=self.wc/2.0
                        self.wl=self.wc*2.20462262/2.0
            })
                .font(.system(size: 30)).foregroundColor(.white)
                .background(Color.orange).padding(.horizontal,100)
            Text("磅pounds").bold().font(.system(size: 30))
            TextField("lb", value:$wl, formatter: NumberFormatter.threeDecimal,
                      onEditingChanged: {(Change) in
                        self.wk=self.wl*0.45359237
                        self.wc=self.wl*0.45359237*2
            })
                .font(.system(size: 30)).foregroundColor(.white)
                .background(Color.orange).padding(.horizontal,100)
        }.navigationBarTitle("Weight Conversion",displayMode: .inline)
        
    }
}

extension NumberFormatter{
    static var threeDecimal:NumberFormatter{
        let format=NumberFormatter()
        format.numberStyle = .decimal
        format.maximumFractionDigits=3
        format.usesGroupingSeparator=false
        return format
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
             ContentView()
        }
       
    }
}



