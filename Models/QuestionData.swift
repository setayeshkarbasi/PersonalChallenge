//
//  d.swift
//  personal challenge
//
//  Created by setayesh karbasi on 16/12/24.
//
import Foundation

// Struct for individual questions in the quiz
struct Question: Identifiable {
    let id = UUID() // Unique ID for each question
    let text: String
    let type: QuestionType
    let options: [String]
}

// Enum for different types of questions
enum QuestionType {
    case toggle   // Yes/No question
    case multiple // Multiple-choice question
}

// Question data class for your app
class QuestionData: ObservableObject {
    @Published var questions: [Question] = [
        Question(text: "What about your lifestyle?", type: .multiple, options: [
            "I'm a city person",
            "I like hosting people",
            "Sometimes I'm a couch potato",
            "I have kids",
            "My dog is my service dog",
            "Other"
        ]),
        Question(text: "Do you have experience owning a dog?", type: .multiple, options: [
            "No, this will be my first dog and I am ready to learn!",
            "I've looked after dogs before, so I have some experience"
        ]),
        Question(text: "How much training would you like to do?", type: .multiple, options: [
            "Don't mind",
            "I'm happy to do the basics",
            "I'd enjoy a dog I can train to a high standard"
        ]),
        Question(text: "Would you be open to owning a dog from a breed that has known potential health issues?", type: .multiple, options: [
            "No, I would prefer a dog from a generally healthy breed",
            "I wouldn't mind dealing with some known potential health problems",
            "I have experience in dealing with dog breeds that carry potential health risks"
        ]),
        Question(text: "What type of walks would you like to do?", type: .multiple, options: [
            "Don't mind",
            "I'm looking for a dog to take on gentle walks",
            "I'd like to go on active walks with my dog",
            "I'd like to keep fit together with vigorous walks"
        ]),
        // Add remaining questions similarly...
    ]
}

