//  Video.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/24/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import Foundation

struct Video: Codable {

    struct Snippet: Codable {

        struct Thumbnails: Codable {
            let url: String
        }

        let title:       String
        let description: String
        let thumbnails:  Thumbnails
        
//        enum CodingKeys: String, CodingKey {
//            case title
//            case resourceId
//            case thumbnails
//        }
    }

    struct ContentDetails: Codable {
        var duration: String
    }

    let id:             String
    let snippet:        Snippet
    let contentDetails: ContentDetails
}
