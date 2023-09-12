//
//  PostsView.swift
//  college.io
//
//  Created by Aarish on 06/09/23.
//

import SwiftUI

struct PostsView: View {
    var body: some View {
        VStack(alignment: .leading){

            HStack(alignment: .center){
                Image("Profilepic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.blue)
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                    .padding(.leading)
                Text("Aarish Rahman")
                    .bold()
                Spacer()
                Text("2 min").padding(.trailing,20).foregroundColor(.secondary)
              
                
                
                
            }
            Text("Rate my resume and suggest changes")
                .padding(.horizontal)
                .multilineTextAlignment(.leading)
            Image("resume")
                .resizable()
                
                .aspectRatio(contentMode: .fit)
//                .frame(width: .infinity,height: 500,alignment: .center)
//                .cornerRadius(20)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
            
            HStack{
                Button{
                    
                } label: {
                    Image(systemName: "heart").font(.title2).foregroundColor(.secondary)
                }.padding(EdgeInsets(top: 3, leading: 15, bottom: 5, trailing: 5))
                Button{
                    
                } label: {
                    Image(systemName: "bubble.left").font(.headline).foregroundColor(.secondary)
                }.padding(EdgeInsets(top: 3, leading: 15, bottom: 5, trailing: 5))
                Button{
                    
                } label: {
                    Image(systemName: "square.and.arrow.up").font(.headline).foregroundColor(.secondary)
                }.padding(EdgeInsets(top: 3, leading: 15, bottom: 5, trailing: 5))
            }
            Divider().padding(.horizontal)
        }
       
        
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
