// Created by Augus on 7/4/23
// Copyright © 2023 Augus <iAugux@gmail.com>

import SwiftUI

public struct ShareAppRows: View {
    let currentApp: ShareApp
    let fetchRemote: Bool

    public init(currentApp: ShareApp, fetchRemote: Bool = true) {
        self.currentApp = currentApp
        self.fetchRemote = fetchRemote
    }

    public var body: some View {
        ForEach(ShareApp.allCases.filter { $0 != currentApp}) {
            ShareAppRow(shareApp: $0, fetchRemote: fetchRemote)
        }
    }
}

// MARK: - Previews
#Preview {
    List {
        Section {
            ShareAppRows(currentApp: .xReload)
        }
    }
}
