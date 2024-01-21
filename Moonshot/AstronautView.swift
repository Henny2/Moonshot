//
//  AstronautView.swift
//  Moonshot
//
//  Created by Henrieke Baunack on 11/12/23.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Image(astronaut.id)
                        .resizable()
                        .scaledToFit()
                        .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    Text(astronaut.description)
                        .padding()
                }
            }
            .background(.darkBackground)
            .navigationTitle(astronaut.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    return AstronautView(astronaut: astronauts["grissom"]!)
        .preferredColorScheme(.dark)
    
}
