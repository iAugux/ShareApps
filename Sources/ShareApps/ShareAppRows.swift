// Created by Augus on 7/4/23
// Copyright © 2023 Augus <iAugux@gmail.com>

import SwiftUI

public struct ShareAppRows: View {
    let currentApp: ShareApp

    public init(currentApp: ShareApp) {
        self.currentApp = currentApp
    }

    public var body: some View {
        ForEach(ShareApp.allCases.filter { $0 != currentApp}) {
            ShareAppRow(shareApp: $0)
        }
    }
}

// MARK: - Previews
struct ShareAppRows_Previews: PreviewProvider {
    static var previews: some View {
        List {
            Section {
                ShareAppRows(currentApp: .xReload)
            }
        }
    }
}
