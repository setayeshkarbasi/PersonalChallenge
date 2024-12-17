//
//  SwiftUIView.swift
//  personal challenge
//
//  Created by setayesh karbasi on 10/12/24.
//
import SwiftUI

struct QuestionnaireView: View {
    @ObservedObject var questionData = DogQuizQuestionData() // Renamed to DogQuizQuestionData
    @State private var selectedAnswers: [UUID: String] = [:]

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(questionData.questions) { question in
                        VStack(alignment: .leading, spacing: 10) {
                            Text(question.text)
                                .font(.headline)
                                .foregroundColor(.blue)

                            ForEach(question.options, id: \.self) { option in
                                Button(action: {
                                    selectedAnswers[question.id] = option
                                }) {
                                    HStack {
                                        Text(option)
                                            .foregroundColor(.black)
                                        Spacer()
                                        if selectedAnswers[question.id] == option {
                                            Image(systemName: "checkmark.circle.fill")
                                                .foregroundColor(.blue)
                                        }
                                    }
                                    .padding()
                                    .background(Color(.systemGray6))
                                    .cornerRadius(10)
                                }
                            }
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                    }

                    // Submit Button
                    NavigationLink(destination: ResultsView(
                        lifestyle: selectedAnswers.first(where: { $0.value.contains("city") || $0.value.contains("hosting") })?.value ?? "Unknown",
                        experience: selectedAnswers.first(where: { $0.value.contains("experience") })?.value ?? "Unknown",
                        training: selectedAnswers.first(where: { $0.value.contains("training") })?.value ?? "Unknown"
                    )) {
                        Text("Submit and See Results")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                }
                .padding()
            }
            .navigationTitle("Breed Buddy Quiz")
            .background(Color(.systemGroupedBackground))
        }
    }
}


