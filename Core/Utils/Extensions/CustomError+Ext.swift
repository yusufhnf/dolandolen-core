//
//  CustomError+Ext.swift
//  dolandolen
//
//  Created by Yusuf Umar Hanafi on 27/11/21.
//

public enum URLError: LocalizedError {
    case invalidResponse
    case addressUnreachable(URL)
    public var errorDescription: String? {
        switch self {
        case .invalidResponse: return "The server responded with garbage."
        case .addressUnreachable(let url): return "\(url.absoluteString) is unreachable."
        }
    }
}
public enum CoreDataError: LocalizedError {
    case requestFailed(String)
    public var errorDescription: String? {
        switch self {
        case .requestFailed(let error): return "CoreData request failed: \(error)"
        }
    }
}
