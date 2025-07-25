// Created by Augus on 7/4/23
// Copyright © 2023 Augus <iAugux@gmail.com>

#if os(macOS)
import AppKit
#elseif os(iOS)
import UIKit
#endif
import SwiftUI

enum Application {
    enum shared {
        static func open(_ url: URL) {
#if os(macOS)
            NSWorkspace.shared.open(url)
#elseif os(iOS)
            UIApplication.shared.open(url)
#endif
        }
    }
}

extension View {
    @ViewBuilder
    func `if`(_ conditional: Bool, @ViewBuilder content: (Self) -> some View) -> some View {
        if conditional {
            content(self)
        } else {
            self
        }
    }
}
