//
//  ContentView.swift
//  Moonshot
//
//  Created by Henrieke Baunack on 11/9/23.
//

import SwiftUI

struct ContentView: View {
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    var body: some View {
        Text(String(missions.count))
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
