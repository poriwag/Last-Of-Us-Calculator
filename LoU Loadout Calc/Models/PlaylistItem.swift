//  PlaylistItem.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/24/21.
//  Copyright © 2021 GeeTeam. All rights reserved.

import UIKit

struct PlaylistItem: Codable {
    let etag: String
    let items: [Item]
    let kind: String
    let nextPageToken: String
    let pageInfo: PageInfo
}

struct Item: Codable {
    let etag: String
    let id: String
    let kind: String
    let snippet: Snippet
}

struct High: Codable {
    let height: Int
    let url: String
    let width: Int
}

struct Medium: Codable {
    let height: Int
    let url: String
    let width: Int
}

struct PageInfo: Codable {
    let resultsPerPage: Int
    let totalResults: Int
}

struct Snippet: Codable {
    let channelId : String
    let channelTitle : String
    let description: String
    let publishedAt : String
    let thumbnails : Thumbnail
    let title : String
}

struct Thumbnail: Codable {
    let high: High
    let medium: Medium
}
