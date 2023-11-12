//
//  Mission.swift
//  Moonshot
//
//  Created by Henrieke Baunack on 11/11/23.
//

import Foundation

struct Mission: Codable, Identifiable {
    // nested struct, one struct inside another
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
