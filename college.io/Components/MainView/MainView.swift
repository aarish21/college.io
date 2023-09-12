//
//  MainView.swift
//  college.io
//
//  Created by Aarish on 06/09/23.
//

import SwiftUI

struct MainView: View {
    @State private var selection = 0
    @Binding var username: String
    var body: some View {
       
            ZStack(alignment: .bottom) {
                TabView{
                    FeedView()
                        .tabItem{
                            Label("",systemImage: "house")
                        }
                        .tag(0)
                    Spacer()
                        .tabItem {
                            EmptyView()
                        }
                        .tag(1)
                   
                    ExploreView(username: $username)
                        .tabItem{
                            Label("",systemImage: "magnifyingglass")
                        }
                        .tag(2)
                }
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .tint(Color.white)
                }
                .frame(width: 60, height: 60)
                .background(Color.init(red:52/255, green: 52/255, blue:52/255))
                .clipShape(Circle())
                
            }
            .ignoresSafeArea(.keyboard)
            .onChange(of: selection) { [selection] newValue in
               if newValue == 1 { // replace 2 with your index
                   self.selection = selection // reset the selection in case we somehow press the middle tab
               }
            }
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(username: .constant(""))
    }
}
