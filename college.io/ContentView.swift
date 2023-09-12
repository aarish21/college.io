//
//  ContentView.swift
//  college.io
//
//  Created by Aarish on 06/09/23.
//

import SwiftUI

struct RoundedButtonStyle: ButtonStyle {
    var backgroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 300)
            .background(backgroundColor)
            .foregroundColor(.white)
            .cornerRadius(50)
    }
}
struct ContentView: View {
    var body: some View {
        //        NavigationView{
        //            VStack {
        //                Spacer()
        //                NavigationLink(destination: RegistrationView()) {
        //                    Text("Register").padding()
        //                        .frame(width: 300)
        //                        .background(.blue)
        //                        .foregroundColor(.white)
        //                        .cornerRadius(50)
        //                }
        //                NavigationLink(destination: LoginView()) {
        //                    Text("Login").padding()
        //                        .frame(width: 300)
        //                        .background(.blue)
        //                        .foregroundColor(.white)
        //                        .cornerRadius(50)
        //                }
        //            }
        //            .padding()
        //        }
        VStack{
            FilterBarView(selectedFilter: .posts)
            ZStack(alignment: .topLeading){
                MainView(username: .constant(""))
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    Button {
                        
                    } label: {
                        Image("Image")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .foregroundColor(.blue)
                            .frame(width: 32, height: 32)
                            .clipShape(Circle())
                        
                    }
                    
                }
                
                
            }
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
