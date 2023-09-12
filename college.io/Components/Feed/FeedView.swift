//
//  FeedView.swift
//  college.io
//
//  Created by Aarish on 06/09/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        VStack{
            ScrollView{
                LazyVStack{
                    ForEach(0...20,id: \.self){_ in
                        PostsView()
                    }
                }
            }
        }
        
        
        
        
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
