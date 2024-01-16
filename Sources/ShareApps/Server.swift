// Created by Augus on 12/15/23
// Copyright © 2023 Augus <iAugux@gmail.com>

import Foundation

enum Server {
    static func appInfo(_ appID: String) async throws -> App {
        let url = URL(string: "https://itunes.apple.com/lookup?id=\(appID)&country=\(Locale.current.regionCode ?? "")")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let decodedData = try JSONDecoder().decode(AppInfoResponse.self, from: data)
        guard let appInfo = decodedData.results.first else {
            throw ServerError.fetchAppError
        }
        let appName = appInfo.trackName
        let appIconURL = appInfo.artworkUrl100
        return .init(name: appName, iconURL: appIconURL)
    }
}

private struct AppInfoResponse: Decodable {
    let results: [AppInfo]
}

private struct AppInfo: Decodable {
    let trackName: String
    let artworkUrl100: URL
}
