//
//  DetailView.swift
//  finalProject
//
//  Created by aa on 2021/6/18.
//  Copyright © 2021 tku-student. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let member:Pirate
    
    var body: some View {
        VStack{
            Image(member.imageName).resizable().aspectRatio(contentMode: .fit)
                .frame(width:200,height:200).cornerRadius(60)
            
            Text(member.name).font(.system(size: 30,weight:.heavy,design:.rounded))
            
            HStack{
                Text("職務:")
                Text(member.position).font(.system(size: 30,weight:.light,design:.rounded))
                
            }
            HStack{
                Text("年齡:")
                Text(member.age).font(.system(size: 30,weight:.light,design:.rounded))
                
            }
            HStack{
                Text("懸賞金額:")
                Text(member.money).font(.system(size: 30,weight:.light,design:.rounded))
                
            }
        }
    }}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(member:members[0]).padding(60)
    }
}
