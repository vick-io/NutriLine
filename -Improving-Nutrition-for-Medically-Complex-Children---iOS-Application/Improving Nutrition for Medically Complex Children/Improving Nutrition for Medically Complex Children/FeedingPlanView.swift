//
//  ContentView.swift
//  Improving Nutrition for Medically Complex Children
//
//  Created by Gill on 2024-03-01.
//

import SwiftUI

struct FeedingPlanView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("March 2, 2024")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            
            HStack{
                Spacer()
                VStack(alignment: .leading) {
                    HStack{
                        Spacer()
                        Text("Log")
                            .font(.headline)
                            .padding(.vertical)
                        Spacer()
                    }
                    
                    // Total feeds information
                    HStack{
                        Spacer()
                        VStack {
                            Text("Total #Feeds = 6")
                                .font(.subheadline)
                            Text("Total Volume/24hrs = 1800ml")
                                .font(.subheadline)
                            Spacer()
                        }
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        Button(action: {
                            // Action for Edit All button
                        }) {
                            Text("Edit All")
                        }
                        .buttonStyle(.bordered)
                        Spacer()
                    }
                }
                Spacer()
            }
            
            
            // List of feed times and goals
            VStack(spacing: 20) {
                ForEach(feedTimes, id: \.self) { feedTime in
                    HStack {
                        Button(action: {
                            // Action for button
                        }) {
                            Text("Edit")
                        }
                        .buttonStyle(.bordered)
                        Text("\(feedTime), Goal 300ml")
                            .padding(.leading)
                        Spacer()
                    }
                }
            }.padding()
            // New NavigationLink to PatientFeedingLogView
            NavigationLink(destination: PatientFeedingLogView()) {
                HStack {
                    Image(systemName: "book.circle") // Choose an icon that fits your design
                        .imageScale(.large)
                    Text("View Feeding Log")
                        .fontWeight(.semibold)
                        .font(.system(size: 16))
                }
                .padding()
                .foregroundColor(.blue)
                .background(Color(.systemGray6))
                .cornerRadius(10)
            }
            .padding(.bottom, 10)
            
            
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
        .navigationBarHidden(true)
        }
    
    
    let feedTimes = ["0600", "1000", "1400", "1800", "2200", "0200"]
}

struct PatientFeedingLogView2: View {
    var body: some View {
        Text("Patient Feeding Log")
            // Customize your PatientFeedingLogView here
    }
}

struct FeedingPlanView_Previews: PreviewProvider {
    static var previews: some View {
        FeedingPlanView()
    }
}
