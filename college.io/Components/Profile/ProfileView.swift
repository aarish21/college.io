//
//  ProfileView.swift
//  college.io
//
//  Created by Aarish on 06/09/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedPage: Int = 0
    @State private var selectedFilter: PostFilterViewModel = .posts
    @Namespace var animation
    var body: some View {
        VStack(alignment: .leading){
            infoView
            filterBar
            AdsView()
                
            Spacer()
        }
        .ignoresSafeArea(.all,edges: .bottom)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var infoView: some View {
        HStack(alignment: .top){
            Image("Profilepic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(.leading)
            VStack(alignment: .leading){
                Text("Aarish Rahman").font(.title2).bold()
                    .padding(.top)
                Label("Maharaja Surajmal Institute of Technology, Btech ECE", systemImage: "building.columns")
                    .padding(.trailing)
                    .foregroundColor(.secondary)

            }
            
            Spacer()
        }
    }
    var filterBar: some View {
        HStack {
            ForEach(PostFilterViewModel.allCases,id:\.rawValue) {
                 item in
                VStack{
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(.gray)
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    }else {
                        Capsule()
                            .foregroundColor(.clear)
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut){
                        self.selectedFilter = item
                    }
                }
            }
        }
        .padding(.top)
        .overlay(Divider().offset(x: 0, y: 24))
    }
}
