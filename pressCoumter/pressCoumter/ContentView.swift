//
//  ContentView.swift
//  pressCoumter
//
//  Created by aa on 2021/6/18.
//  Copyright © 2021 tku-student. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var clickNum=0
    @State var clickBounds=10
    @State var sign=1
    var body: some View {
        VStack{
            Text("Counter:\(Int(clickNum))")
                .fontWeight(.heavy).font(.largeTitle).padding(60)
            Button(action: {
                if self.clickNum==self.clickBounds{
                    self.sign=(-1)
                }else if self.clickNum==0{
                    self.sign=1
                }
                self.clickNum=self.clickNum+self.sign

            }) {
                if self.clickNum==self.clickBounds{
                    myText(myString:"-1")
                }else if self.clickNum==0{
                    myText(myString:"+1")
                }else if self.sign>0{
                    myText(myString:"+1")
                }else if self.sign<0{
                    myText(myString:"-1")}
                }
        
        }.navigationBarTitle("Counter",displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}

struct myText:View{
    var myString:String
    var body:some View{
        Text(myString)
            .font(.largeTitle)
            .padding().foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(20)
    }
}

