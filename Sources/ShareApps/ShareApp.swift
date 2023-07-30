// Created by Augus on 2022/1/10
// Copyright © 2022 Augus <iAugux@gmail.com>

import SwiftUI

public enum ShareApp: CaseIterable, Identifiable {
    case xsearch
    case valens
    case browser
    case player
    case purge
    case extractor
    case xQR
    case xReload

    var icon: Image {
        switch self {
        case .xsearch:
            return .init("xsearch", bundle: .module)
        case .valens:
            return .init("valens", bundle: .module)
        case .extractor:
            return .init("xextractor", bundle: .module)
        case .xQR:
            return .init("xqr", bundle: .module)
        case .xReload:
            return .init("xreload", bundle: .module)
        case .player:
            return .init("player4watch", bundle: .module)
        case .purge:
            return .init("purge4safari", bundle: .module)
        case .browser:
            return .init("browser4watch", bundle: .module)
        }
    }

    var name: String {
        switch self {
        case .xsearch:
            return "xSearch for Safari"
        case .valens:
            return "Valens - Widgets for Health"
        case .extractor:
            return "Extractor for Safari"
        case .xQR:
            return "xQR for Safari"
        case .xReload:
            return "xReload for Safari"
        case .player:
            return "Player for Watch"
        case .purge:
            return "Purge for Safari"
        case .browser:
            return "Browser for Watch"
        }
    }

    public var id: String {
        switch self {
        case .xsearch:
            return "1579902068"
        case .valens:
            return "1582356757"
        case .extractor:
            return "1626704817"
        case .xQR:
            return "1602650129"
        case .xReload:
            return "1588834516"
        case .player:
            return "6446242162"
        case .purge:
            return "1619725381"
        case .browser:
            return "6445950258"
        }
    }
}
