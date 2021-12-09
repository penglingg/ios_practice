//
//  ContentView.swift
//  buttenVariety
//
//  Created by aa on 2021/6/18.
//  Copyright © 2021 tku-student. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var colorChange=false
    @State private var sizeChange=false
    @State private var isOn=false
    var body: some View {
        VStack{
            Image(systemName: "heart.fill")
                .font(.system(size: 200))
                .foregroundColor(colorChange ? Color.yellow : Color.red)
                .scaleEffect(sizeChange ? 1.5 : 1)
                .animation(.default)
                .onTapGesture {
                self.colorChange.toggle() }
                .onLongPressGesture {
                self.sizeChange.toggle() }
            Image(systemName: "heart.fill").font(.system(size: 80)).foregroundColor(isOn ? Color.blue : Color.black)
            Toggle(isOn: $isOn){
                Text(isOn ? "blue" : "black") .font(.system(.title)).bold()
            }
        }
    
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
