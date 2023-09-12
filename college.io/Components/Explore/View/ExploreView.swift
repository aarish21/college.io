//
//  ExploreView.swift
//  college.io
//
//  Created by Aarish on 06/09/23.
//

import SwiftUI

struct ExploreView: View {
    @Binding var username: String
    var body: some View {
      
        ScrollView {
            LazyVStack {
                ForEach(0...25,id:\.self) { _ in
                    NavigationLink{
                        ProfileView()
                    }label: {
                        UserRowView()
                    }
                }
            }
        }
        .navigationTitle("Search")
        .navigationBarTitleDisplayMode(.inline)
        .searchable(text: $username)
        
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView(username: .constant(""))
    }
}
