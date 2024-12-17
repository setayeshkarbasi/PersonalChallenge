//
//  SwiftUIView.swift
//  personal challenge
//
//  Created by setayesh karbasi on 10/12/24.
//
import SwiftUI

struct ResultsView: View {
    var lifestyle: String
    var experience: String
    var training: String

    // Static data model for recommended breeds
    let allBreeds = [
        "Golden Retriever",
        "Labrador",
        "Beagle",
        "Pug",
        "Bulldog"
    ]

    var recommendedDogs: [String] {
        var filteredBreeds: [String] = []

        // Dynamic filtering based on user preferences
        if lifestyle == "I’m a city person" && training == "Don’t Mind" {
            filteredBreeds.append("Pug")
            filteredBreeds.append("Bulldog")
        }
        if experience == "No, this will be my first dog" {
            filteredBreeds.append("Golden Retriever")
            filteredBreeds.append("Labrador")
        }

        // Add more conditions based on preferences
        if lifestyle == "I like hosting people" {
            filteredBreeds.append("Golden Retriever")
            filteredBreeds.append("Labrador")
        }

        // If no filters match, show all breeds
        return filteredBreeds.isEmpty ? allBreeds : filteredBreeds
    }

    var body: some View {
        NavigationView {
            VStack {
                Text("Your Ideal Dog Breeds")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                Text("Based on your preferences, we recommend:")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                List(recommendedDogs, id: \.self) { dog in
                    NavigationLink(destination: DogDetailView(dogName: dog)) {
                        HStack {
                            Image(systemName: "pawprint.fill")
                                .foregroundColor(.orange)
                            Text(dog)
                        }
                    }
                }
                .navigationTitle("Recommended Breeds")
                .listStyle(InsetGroupedListStyle())
            }
            .padding()
        }
    }
}

