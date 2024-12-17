//
//  ContentView.swift
//  personal challenge
//
//  Created by setayesh karbasi on 16/12/24.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                // App Name
                Text("Breed Buddy")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 50)

                // Start Quiz Button
                NavigationLink(destination: QuestionnaireView()) {
                    Text("Start Quiz")
                        .font(.headline)
                        .frame(width: 120, height: 120)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                }
                .padding(.top, 30)

                Spacer() // Push content to the top
            }
            .padding()
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
