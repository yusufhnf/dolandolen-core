//
//  Endpoints.swift
//  dolandolen
//
//  Created by Yusuf Umar Hanafi on 27/11/21.
//

import Foundation

public struct API {
    public static let baseURL = "https://api.rawg.io/api"
    public static let apiKey = Bundle.main.infoDictionary?["RAWG_API_KEY"] as? String
}
public protocol Endpoint {
    var url: String {get}
}
public enum Endpoints {
    public enum Gets: Endpoint {
        case gameList
        case gameDetail
        public var url: String {
            switch self {
            case .gameList:
                return "\(API.baseURL)/games"
            case .gameDetail:
                return "\(API.baseURL)/games/"
            }
        }
    }
}
