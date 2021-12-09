//
//  ContentView.swift
//  pictureSizeChange
//
//  Created by aa on 2021/6/18.
//  Copyright © 2021 tku-student. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var imageWidth:CGFloat=UIScreen.main.bounds.width/2
    @State private var imageHeight:CGFloat=UIScreen.main.bounds.height/2
    
    var body: some View {
        VStack{
            Slider(value: $imageWidth,in: 100 ... UIScreen.main.bounds.width*2).frame(width:UIScreen.main.bounds.width-0)
            Slider(value: $imageHeight,in: 100 ... UIScreen.main.bounds.height-200).frame(width:UIScreen.main.bounds.width-0)
            Spacer()
            Image("TKU1").resizable()//.aspectRatio(contentMode: .fit)
                .frame(width:imageWidth,height:imageHeight)
            Spacer()
        }.navigationBarTitle("Picture Adjustment",displayMode:.inline)
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
        
    }
}
