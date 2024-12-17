//
//  SwiftUIView.swift
//  personal challenge
//
//  Created by setayesh karbasi on 10/12/24.
//
import SwiftUI

struct DogDetailView: View {
    let dogName: String

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
                .frame(height: 200)
                .padding(.vertical, 80)

            Text("Details about \(dogName)...")
                .font(.body)

            Spacer()
        }
        .padding()
        .navigationTitle(dogName) // Set navigation title for this view
    }
}

struct DogDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DogDetailView(dogName:"ww")
    }
}
