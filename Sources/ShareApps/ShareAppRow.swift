// Created by Augus on 2022/1/10
// Copyright © 2022 Augus <iAugux@gmail.com>

import SwiftUI

public struct ShareAppRow: View {
    @State public var shareApp: ShareApp
    @State private var appName: String?
    public var fetchRemote = true

    public var body: some View {
        Button {
            Application.shared.open(URL(string: "https://apps.apple.com/app/apple-store/id\(shareApp.id)?pt=118051329&ct=\(currentAppIdentifier)&mt=8")!)
        } label: {
            HStack {
                shareApp.icon
                    .shadow(radius: 0.5)
                Text(title)
                    .foregroundColor(.primary)
                    .onAppear(perform: {
                        guard fetchRemote else { return }
                        Task {
                            do {
                                appName = try await Server.appInfo(shareApp.id)
                            } catch {
                                print(error)
                            }
                        }
                    })
            }
        }
        .animation(.default, value: title)
    }

    private var title: String {
        appName ?? shareApp.name
    }

    private var currentAppIdentifier: String {
        Bundle.main.bundleIdentifier?.replacingOccurrences(of: ".", with: "-") ?? "Augus"
    }
}
