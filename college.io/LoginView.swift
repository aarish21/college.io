import SwiftUI



struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var buttonWidth: CGFloat = 0
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "lock.circle.fill")
                    .font(.system(size: 100))
                    .foregroundColor(.blue)
                    .padding(.bottom, 20)
                
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                TextField("Username", text: $username)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.secondary, lineWidth: 0.5)
                    ).padding()
                    
                
                SecureField("Password", text: $password)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.secondary, lineWidth: 0.5)
                    ).padding()
                
                Button(action: {
                    // Implement your login logic here
                    // For example, you can perform authentication
                }) {
                    Text("Login")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.top)
                .frame(width: 350)
                
                Spacer()
                
                NavigationLink(destination: Text("Forgot Password")) {
                    Text("Forgot Password?")
                        .foregroundColor(.blue)
                }
            }
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
