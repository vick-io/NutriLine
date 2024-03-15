import SwiftUI

struct PatientFeedingLogView: View {
    @State private var feedingRoute: String = "Enter Feeding Route"
    @State private var volumeML: String = "Enter Volume of Feed"
    @State private var additionalComments: String = ""
    @State private var customFeedingProduct: String = ""
    let toleranceOptions = ["Tolerated Well", "Some Signs & Symptoms of Discomfort", "Not Tolerated"]
    @State private var toleranceLevel: String = "Well" // Default value
    @State private var feedingProduct: String = "Enter Feeding Product"
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text(dateFormatter.string(from: Date())).font(.headline)) {
                    
                    VStack(alignment: .leading, spacing: 16) { // Add spacing between elements inside VStack
                        Text("Feeding Route")
                            .font(.headline)
                            .underline()
                        
                        TextField("Enter Feeding Route", text: $feedingRoute)
                            .foregroundColor(.gray)
                            .frame(height: 50) // Set height
                            .padding(.vertical, 10) // Add vertical padding
                            .background(
                                RoundedRectangle(cornerRadius: 10) // Add rounding to the background
                                    .fill(Color(.systemGray5)) // Set background color to light gray
                            )
                        
                        Divider()
                        
                        Text("Volume (mL)")
                            .font(.headline)
                            .underline()

                        
                        TextField("Enter Volume of Feed", text: $volumeML)
                            .foregroundColor(.gray) // Set foreground color to gray
                            .frame(height: 50) // Set height
                            .padding(.vertical, 10) // Add vertical padding
                            .background(
                                RoundedRectangle(cornerRadius: 10) // Add rounding to the background
                                    .fill(Color(.systemGray5)) // Set background color to light gray
                            )
                        
                        Divider()
                        
                        Text("Feeding Product")
                            .font(.headline)
                            .underline()

                        TextField("Enter Feeding Product", text: $feedingProduct)
                            .foregroundColor(.gray) // Set foreground color to gray
                            .frame(height: 50) // Set height
                            .padding(.vertical, 10) // Add vertical padding
                            .background(
                                RoundedRectangle(cornerRadius: 10) // Add rounding to the background
                                    .fill(Color(.systemGray5)) // Set background color to light gray
                            )
                        
                        Divider()
                        
                        Picker("Tolerance Level", selection: $toleranceLevel) {
                            ForEach(toleranceOptions, id: \.self) {
                                Text($0)
                            }
                        }
                        
                    }
                    .padding(.vertical, 20) // Add vertical padding to the entire VStack
                    
                    TextField("Additional Comments: \(additionalComments)", text: $additionalComments)
                        .padding(.top, 8) // Add padding to separate from the previous field
                        .frame(height: 100) // Set height
                        .padding(.vertical, 10) // Add vertical padding
                        .background(
                            RoundedRectangle(cornerRadius: 10) // Add rounding to the background
                                .fill(Color(.systemGray5)) // Set background color to light gray
                        )
                }
                
            }
            .navigationBarTitle("Feeding Log", displayMode: .inline)
            
            // HStack containing navigation links
            HStack {
                Spacer()
                NavigationLink(destination: Dashboard()) {
                    VStack {
                        Image(systemName: "square.grid.2x2.fill") // Dashboard icon
                        Text("Dashboard")
                            .font(.caption)
                    }
                }
                .foregroundColor(.black) // Change link color
                .frame(maxWidth: .infinity)
                Spacer()
                NavigationLink(destination: FeedingPlanView()) {
                    VStack {
                        Image(systemName: "book.fill") // Feeding Plan icon
                        Text("Feeding Plan")
                            .font(.caption)
                    }
                }
                .foregroundColor(.black) // Change link color
                .frame(maxWidth: .infinity)
                Spacer()
                // Add other tab bar items here
            }
            .padding()
            .background(Color.yellow) // Use the appropriate color
        }
        .navigationBarTitle("", displayMode: .inline) // Hides the navigation bar title
        .navigationBarHidden(true) // Hides the navigation bar
    }
}

// Preview
struct PatientFeedingLogView_Previews: PreviewProvider {
    static var previews: some View {
        PatientFeedingLogView()
    }
}
