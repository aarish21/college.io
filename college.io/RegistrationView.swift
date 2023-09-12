//
//  RegistrationView.swift
//  college.io
//
//  Created by Aarish on 06/09/23.
//
import SwiftUI
struct CollegePicker: View, Equatable {
    @State private var selectedCollege: String = ""
    @State  var collegeData: CollegeData
    var body: some View {
        Picker("", selection: $selectedCollege) {
            ForEach(collegeData.colleges, id: \.self) { family in
                Text(family)
                    .tag(family)
            }
        }
    }
    static func == (l: CollegePicker, r: CollegePicker) -> Bool {
           l.selectedCollege == r.selectedCollege
       }
   
}

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var mobileNumber = ""
    @State private var selectedCollege: String = ""
    
    @ObservedObject var collegeData = CollegeData()
    @State private var searchText: String = ""
    var body: some View {
        VStack{
            CollegePicker(
                collegeData: collegeData
            )
            .equatable()
        }
//        NavigationView {
//            Form {
//                Section(header: Text("User Information")) {
//                    TextField("Email", text: $email)
//                    SecureField("Password", text: $password)
//                    TextField("Mobile Number", text: $mobileNumber)
//                }
//
////                Section(header: Text("College Information")) {
////                    Picker("Select College", selection: $selectedCollege) {
////                        Text("").tag("")
////                        ForEach(collegeData.colleges, id: \.self) {
////                            Text($0)
////                        }
////                    }
////
////                    Text("Selected College: \(selectedCollege)")
////                }
//
//                Section {
//                    Button(action: {
//                        print(collegeData.colleges)
//                    }) {
//                        Text("Register")
//
//                    }
//                }
//            }
//            .navigationBarTitle("Registration")
//        }
    }
}

//struct RegistrationView_Previews: PreviewProvider {
//    static var previews: some View {
//        RegistrationView()
//    }
//}
