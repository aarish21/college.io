//
//  PickerPlus.swift
//  college.io
//
//  Created by Aarish on 06/09/23.
//

import SwiftUI
struct Home: View {
    
    @State var index = 0
    var body: some View {
        
        VStack {
            HStack {
                Text("Picker with icon")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Spacer(minLength: 0)
            }
            .padding(.horizontal)
            
            
            HStack(spacing: 0){
                VStack{
                    Image(systemName: "person")
                        .foregroundColor(self.index == 0 ? .black : .gray)
                    Text("Person")
                        .foregroundColor(self.index == 0 ? .black : .gray)
                    
                    
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 35)
                .background((Color.white).opacity(self.index == 0 ? 1 : 0))
//                .clipShape(Capsule())
                .onTapGesture {
                    self.index = 0
                }
                
                VStack{
                    Image(systemName: "ellipsis.circle")
                        .foregroundColor(self.index == 1 ? .black : .gray)
                    Text("More")
                        .foregroundColor(self.index == 1 ? .black : .gray)
                    
                    
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 35)
                .background((Color.white).opacity(self.index == 1 ? 1 : 0))
//                .clipShape(Capsule())
                .onTapGesture {
                    self.index = 1
                
                }
                
            }
            
            .padding(3)
            .background(Color.black.opacity(0.06))
            Spacer(minLength: 0)
        }
        .padding(.top)
    }
}
struct PickerPlus: View {
    var body: some View {
        Home()
    }
}

struct PickerPlus_Previews: PreviewProvider {
    static var previews: some View {
        PickerPlus()
    }
}
