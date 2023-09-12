//
//  UserRowView.swift
//  college.io
//
//  Created by Aarish on 06/09/23.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(alignment: .center){
            Image("Profilepic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .foregroundColor(.blue)
                .frame(width: 56,height: 56)
                .clipShape(Circle())
                .padding(.leading)
            VStack(alignment: .leading){
                Text("Aarish Rahman")
                    .bold()
                    
                    .foregroundColor(.black)
                Text("@aarish21")
                    .foregroundColor(.secondary)
            }.padding(.leading,10)
           
            Spacer()
        }
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
