//
//  FilterBarView.swift
//  college.io
//
//  Created by Aarish on 07/09/23.
//

import SwiftUI

struct FilterBarView: View {
    @State var selectedFilter: PostFilterViewModel
    @Namespace var animation
    var body: some View {
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

struct FilterBarView_Previews: PreviewProvider {
    static var previews: some View {
        FilterBarView(selectedFilter: .posts)
    }
}
