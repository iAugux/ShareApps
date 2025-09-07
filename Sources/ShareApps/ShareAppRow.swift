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
            Label {
                Text(title)
                    .foregroundColor(.primary)
                    .if(true) { view in
                        if #available(iOS 15.0, *) {
                            view.task {
                                await fetchRemoteTitle()
                            }
                        } else {
                            view.onAppear(perform: {
                                Task {
                                    await fetchRemoteTitle()
                                }
                            })
                        }
                    }
                    .padding(.leading)
            } icon: {
                ZStack {
                    Color.clear
                    shareApp.icon
                        .resizable()
                        .padding(-8)
                        .shadow(radius: 0.5)
                }
                .frame(width: 40, height: 40)
            }
            .padding(.leading, 8)
            .if(true) {
                if #available(iOS 26.0, *) {
                    $0.padding(.vertical, 8)
                } else {
                    $0
                }
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

    private func fetchRemoteTitle() async {
        guard fetchRemote else { return }
        do {
            appName = try await Server.appInfo(shareApp.id)
        } catch {
            print(error)
        }
    }
}
