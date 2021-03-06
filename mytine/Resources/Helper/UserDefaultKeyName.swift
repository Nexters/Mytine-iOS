//
//  UserDefaultKeyName.swift
//  mytine
//
//  Created by 남수김 on 2020/07/27.
//  Copyright © 2020 황수빈. All rights reserved.
//

import Foundation

enum UserDefaultKeyName {
    case firstEnter
    case recentEnter
    case recentWeek
    case tutorial

    var getString: String {
        switch self {
        case .firstEnter:
            return "firstEnter"
        case .recentEnter:
            return "recentEnter"
        case .recentWeek:
            return "recentWeek"
        case .tutorial:
            return "tutorial"
        }
    }
}
