import SwiftUI

struct Dashboard: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Feeds")
                        .font(.headline)
                        .padding()
                    Spacer()
                }
                .background(Color.pink.opacity(0.3))

                HStack {
                    Text("Current total intake for day and feeds completed")
                        .font(.caption)
                        .padding()
                    Spacer()
                }
                .background(Color.yellow.opacity(0.3))

                Button(action: {
                    // Action for Weigh button
                }) {
                    Text("Weigh")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                .padding()

                Text("Discover")
                    .font(.headline)
                    .padding()

                List {
                    Button(action: {
                        // Action for Feeding Plan
                    }) {
                        HStack {
                            Image(systemName: "book")
                            Text("Feeding Plan")
                        }
                    }

                    Button(action: {
                        // Action for Resources
                    }) {
                        HStack {
                            Image(systemName: "folder")
                            Text("Resources")
                        }
                    }

                    Button(action: {
                        // Action for Contact HCP
                    }) {
                        HStack {
                            Image(systemName: "phone")
                            Text("Contact HCP")
                        }
                    }
                }
            }
            .navigationBarTitle("Title", displayMode: .inline)
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
