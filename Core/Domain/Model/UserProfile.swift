//
//  UserProfile.swift
//  Core
//
//  Created by Yusuf Umar Hanafi on 07/12/21.
//

import Foundation

public class UserProfile {
    public static let nameKey = "name"
    public static let descKey = "desc"
    public static var name: String {
        get {
            return UserDefaults.standard.string(forKey: nameKey) ?? "Yusuf Umar Hanafi"
        }
        set {
            UserDefaults.standard.set(newValue, forKey: nameKey)
        }
    }
    public static var desc: String {
        get {
            return UserDefaults.standard.string(forKey: descKey) ?? "iOS Developer | Apple Developer Academy"
        }
        set {
            UserDefaults.standard.set(newValue, forKey: descKey)
        }
    }
    public static func synchronize() {
        UserDefaults.standard.synchronize()
    }
}
