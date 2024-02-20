// Created by Augus on 2022/1/10
// Copyright © 2022 Augus <iAugux@gmail.com>

import SwiftUI

public enum ShareApp: CaseIterable, Identifiable {
    case xsearch
    case browser
    case player
    case pix
    case reader
    case valens
    case navify
    case purge
    case reset
    case extractor
    case xQR
    case xReload

    public var icon: Image {
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
        case .reset:
            return .init("reset", bundle: .module)
        case .navify:
            return .init("navify", bundle: .module)
        case .pix:
            return .init("pix", bundle: .module)
        case .reader:
            return .init("reader4watch", bundle: .module)
        }
    }

    public var name: String {
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
        case .reset:
            return "Reset - Track with Widgets"
        case .navify:
            return "Navify - Navigate to Photo"
        case .pix:
            return "Pix - Photos for Watch"
        case .reader:
            return "Reader for Watch"
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
        case .reset:
            return "6463799353"
        case .navify:
            return "6474376506"
        case .pix:
            return "6475564605"
        case .reader:
            return "6446140905"
        }
    }
}
