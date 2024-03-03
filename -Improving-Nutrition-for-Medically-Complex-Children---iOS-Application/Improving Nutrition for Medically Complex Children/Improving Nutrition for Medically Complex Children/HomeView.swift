import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Profile header
                VStack {
                    Image("kid") // Replace with actual profile picture
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipped()
                    Text("Yene") // Replace with the actual name variable
                        .font(.largeTitle)
                        .padding(.top, 8)
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                }
                .padding(.top, 20)


                Divider()

                // Content area for personal information and notifications
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "person.fill") // Use appropriate icons
                        Text("Personal Information")
                            .fontWeight(.bold)
                            .font(.system(size: 22))
                    }
                    .padding(.top, 16)

                    HStack {
                        Image(systemName: "bell.fill") // Use appropriate icons
                        Text("Notifications")
                            .fontWeight(.bold)
                            .font(.system(size: 22))
                    }
                    .padding(.top, 16)
                }
                .padding()

                Spacer()

                // Bottom tab bar with icons and labels
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
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct DashboardView: View {
    var body: some View {
        Text("Dashboard View")
    }
}

struct FeedingPlanView2: View {
    var body: some View {
        Text("Feeding Plan View")
    }
}
