// Created by Augus on 2022/1/10
// Copyright © 2022 Augus <iAugux@gmail.com>

import SwiftUI

public enum ShareApp: CaseIterable, Identifiable {
    case xsearch
    case player
    case browser
    case valens
    case imagio
    case extractor
    case callShield
    case pix
    case reader
    case navify
    case purge
    case reset
    case xQR
    case https
    case direct
    case xReload
    case xPassword

    public var icon: Image {
        switch self {
        case .xsearch:
                .init("xsearch", bundle: .module)
        case .valens:
                .init("valens", bundle: .module)
        case .extractor:
                .init("xextractor", bundle: .module)
        case .xQR:
                .init("xqr", bundle: .module)
        case .xReload:
                .init("xreload", bundle: .module)
        case .player:
                .init("player4watch", bundle: .module)
        case .purge:
                .init("purge4safari", bundle: .module)
        case .browser:
                .init("browser4watch", bundle: .module)
        case .reset:
                .init("reset", bundle: .module)
        case .navify:
                .init("navify", bundle: .module)
        case .pix:
                .init("pix", bundle: .module)
        case .reader:
                .init("reader4watch", bundle: .module)
        case .xPassword:
                .init("xpassword", bundle: .module)
        case .direct:
                .init("direct", bundle: .module)
        case .https:
                .init("https4safari", bundle: .module)
        case .imagio:
                .init("imagio", bundle: .module)
        case .callShield:
                .init("callshield", bundle: .module)
        }
    }

    public var name: String {
        switch self {
        case .xsearch:
            "xSearch for Safari"
        case .valens:
            "Valens - Widgets for Health"
        case .extractor:
            "Extractor for Safari"
        case .xQR:
            "xQR for Safari"
        case .xReload:
            "xReload for Safari"
        case .player:
            "Player for Watch"
        case .purge:
            "Purge for Safari"
        case .browser:
            "Browser for Watch"
        case .reset:
            "Reset - Track with Widgets"
        case .navify:
            "Navify - Navigate to Photo"
        case .pix:
            "Pix - Photos for Watch"
        case .reader:
            "Reader for Watch"
        case .xPassword:
            "xPassword for Safari"
        case .direct:
            "Direct - Remove Redirection"
        case .https:
            "HTTPS for Safari"
        case .imagio:
            "Imagio - Reverse Image Search"
        case .callShield:
            "Call Shield: Spam Call Blocker"
        }
    }

    public var id: String {
        switch self {
        case .xsearch:
            "1579902068"
        case .valens:
            "1582356757"
        case .extractor:
            "1626704817"
        case .xQR:
            "1602650129"
        case .xReload:
            "1588834516"
        case .player:
            "6446242162"
        case .purge:
            "1619725381"
        case .browser:
            "6445950258"
        case .reset:
            "6463799353"
        case .navify:
            "6474376506"
        case .pix:
            "6475564605"
        case .reader:
            "6446140905"
        case .xPassword:
            "1621026622"
        case .direct:
            "1672738777"
        case .https:
            "6467700989"
        case .imagio:
            "6479577243"
        case .callShield:
            "6744029271"
        }
    }
}
