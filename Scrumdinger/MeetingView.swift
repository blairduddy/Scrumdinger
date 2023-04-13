//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Blair Duddy on 2023-04-12.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        
// Progress Bar
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack (alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                
//Progress Bar Labels
                Spacer()
                VStack (alignment: .trailing){
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }

//Accessibility
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("10 minutes")
            
            
//Progress Circle
            Circle()
                .strokeBorder(lineWidth: 24)

//Footer
            HStack {
                Text("Speaker 1 of 3")
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next Speaker")
            }
            
        }
//Bring in objects from edge
        .padding()
    }
}










struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
