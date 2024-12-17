//
//  QuestionModel.swift
//  personal challenge
//
//  Created by setayesh karbasi on 12/12/24.
//

import Foundation

// Struct for individual questions in the dog quiz
struct DogQuizQuestion: Identifiable {
    let id = UUID()
    let text: String
    let type: DogQuizQuestionType
    let options: [String]
}

// Enum for different types of dog quiz questions
enum DogQuizQuestionType {
    case toggle   // Yes/No question
    case multiple // Multiple-choice question
}

class DogQuizQuestionData: ObservableObject {
    @Published var questions: [DogQuizQuestion] = [
        DogQuizQuestion(text: "What about your lifestyle?", type: .multiple, options: [
            "I'm a city person",
            "I like hosting people",
            "Sometimes I'm a couch potato",
            "I have kids",
            "My dog is my service dog",
            "Other"
        ]),
        DogQuizQuestion(text: "Do you have experience owning a dog?", type: .multiple, options: [
            "No, this will be my first dog and I am ready to learn!",
            "I've looked after dogs before, so I have some experience"
        ]),
        DogQuizQuestion(text: "How much training would you like to do?", type: .multiple, options: [
            "Don't mind",
            "I'm happy to do the basics",
            "I'd enjoy a dog I can train to a high standard"
        ]),
        DogQuizQuestion(text: "Would you be open to owning a dog from a breed that has known potential health issues?", type: .multiple, options: [
            "No, I would prefer a dog from a generally healthy breed",
            "I wouldn't mind dealing with some known potential health problems",
            "I have experience in dealing with dog breeds that carry potential health risks"
        ]),
        DogQuizQuestion(text: "What type of walks would you like to do?", type: .multiple, options: [
            "Don't mind",
            "I'm looking for a dog to take on gentle walks",
            "I'd like to go on active walks with my dog",
            "I'd like to keep fit together with vigorous walks"
        ]),
        // Add other questions similarly...
    ]
}
