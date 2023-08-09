// Created by Augus on 2022/1/10
// Copyright © 2022 Augus <iAugux@gmail.com>

import SwiftUI

struct ShareAppRow: View {
    @State var shareApp: ShareApp

    public var body: some View {
        Button {
            Application.shared.open(URL(string: "https://itunes.apple.com/app/id\(shareApp.id)")!)
        } label: {
            HStack {
                shareApp.icon
                    .shadow(radius: 0.5)
                Text(shareApp.name)
                    .foregroundStyle(.primary)
            }
        }
    }
}
