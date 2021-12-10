//
//  ContentView.swift
//  finalProject
//
//  Created by aa on 2021/6/18.
//  Copyright © 2021 tku-student. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        NavigationView{
            List(members){member in
                NavigationLink(destination: DetailView(member:member)){
                        PirateMember(member:member)            }
            }.navigationBarTitle("航海王 船員")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().padding(.top,60)
    }
}




struct PirateMember: View {
    let member:Pirate
    
    var body: some View {
        HStack{
            Image(member.imageName).resizable().aspectRatio(contentMode: .fit)
                .frame(width:80,height:80).cornerRadius(30)
            VStack(alignment: .leading, spacing: 5){
                Text(member.name).font(.system(size: 30,weight:.heavy,design:.rounded))
                Text(member.position).font(.system(size: 30,weight:.light,design:.rounded))
            }
        }
    }
}
