//
//  ContentView.swift
//  Dad Jokes
//
//  Created by Student on 2/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear(perform: {
                queryAPI()
            })
    }
    
    func queryAPI() {
        let apiKey = "?rapidapi-key=f85e60ae43mshae649811fe5b185p147232jsn0490791bc83a"
        let query = "https://dad-jokes.p.rapidapi.com/\(apiKey)"
        if let url = URL(string: query) {
            if let data = try? Data(contentsOf: url) {
                let json = try! JSON(data: data)
                print(json)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
