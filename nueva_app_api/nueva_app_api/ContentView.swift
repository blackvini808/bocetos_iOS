//
//  ContentView.swift
//  nueva_app_api
//
//  Created by alumno on 20-10-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://www.demonslayer-api.com/api/v1/characters/images/1.webp"))
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
