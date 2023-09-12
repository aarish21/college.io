import SwiftUI

struct AdsView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 16)], spacing: 16) {
                HStack{
                    AdItemView(imageName: "hrithik", title: "Product 1", price: 150)
                    AdItemView(imageName: "Profilepic", title: "Product 2", price: 200)
                }
                // Add more items as needed
            }
            .padding()
        }
    }
}

struct AdItemView: View {
    let imageName: String
    let title: String
    let price: Int

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: 200) // Fixed image frame size
                    .padding(8) // Add some padding around the image

                Text("₹\(price)") // Display price with rupee symbol
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding(.top, 8)

                Text(title)
                    .font(.headline)
                    .padding(.bottom,10)
            }
            .background(Color.init(red: 250/255, green: 249/255, blue: 2249/255))
            .border(.black, width: 0.2)
//            .cornerRadius(10)
            .frame(width: geometry.size.width) // Ensure the frame matches cell width
        }
        .frame(height: 350) // Set a fixed height for each cell
    }
}

struct AdsView_Previews: PreviewProvider {
    static var previews: some View {
        AdsView()
    }
}
