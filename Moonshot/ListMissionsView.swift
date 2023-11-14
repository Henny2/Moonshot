//
//  ListMissionsView.swift
//  Moonshot
//
//  Created by Henrieke Baunack on 11/12/23.
//

import SwiftUI

struct ListMissionsView: View {
    let missions: [Mission]
    let astronauts: [String:Astronaut]
    var body: some View {
        NavigationStack{
            
            // fix the divider lines, follow this: https://www.hackingwithswift.com/quick-start/swiftui/composing-views-to-create-a-list-row
            List {
                ForEach(missions){ mission in
                    NavigationLink{
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        VStack{
                            HStack{
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                VStack{
                                    Text(mission.displayName)
                                    
                                    Text(mission.formattedLaunchDate)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String:Astronaut] = Bundle.main.decode("astronauts.json")
    return ListMissionsView(missions: missions, astronauts: astronauts).preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
