//
//  AppIconView.swift
//  personal challenge
//
//  Created by setayesh karbasi on 16/12/24.
//

import SwiftUI

struct AppIconView: View {
    var body: some View {
        VStack {
            Image("AppIcon") // Name of the image in Assets.xcassets
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200) // Adjust icon size
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 10)
            Text("Pawfect Match")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.blue)
        }
        .padding()
        .background(Color.green.opacity(0.2))
        .cornerRadius(15)
    }
}

struct AppIconView_Previews: PreviewProvider {
    static var previews: some View {
        AppIconView()
    }
}
