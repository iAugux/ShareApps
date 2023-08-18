// Created by Augus on 2022/1/10
// Copyright © 2022 Augus <iAugux@gmail.com>

import SwiftUI

struct ShareAppRow: View {
    @State var shareApp: ShareApp

    public var body: some View {
        Button {
            Application.shared.open(URL(string: "https://apps.apple.com/app/apple-store/id\(shareApp.id)?pt=118051329&ct=\(currentAppIdentifier)&mt=8")!)
        } label: {
            HStack {
                shareApp.icon
                    .shadow(radius: 0.5)
                Text(shareApp.name)
                    .foregroundColor(.primary)
            }
        }
    }

    private var currentAppIdentifier: String {
        Bundle.main.bundleIdentifier?.replacingOccurrences(of: ".", with: "-") ?? "Augus"
    }
}
