import Foundation

// http://danger.systems/js/reference.html

// MARK: - DangerDSL

public struct DSL: Decodable {
    /// The root danger import
    public let danger: DangerDSL
}

public struct DangerDSL: Decodable {
    public let git: Git

    public private(set) var github: GitHub!

    public let bitbucketServer: BitBucketServer!

    public let utils: DangerUtils

    enum CodingKeys: String, CodingKey {
        case git
        case github
        case bitbucketServer = "bitbucket_server"
        case settings
        // Used by plugin testing only
        // See: githubJSONWithFiles
        case fileMap
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        git = try container.decode(Git.self, forKey: .git)
        github = try container.decodeIfPresent(GitHub.self, forKey: .github)
        bitbucketServer = try container.decodeIfPresent(BitBucketServer.self, forKey: .bitbucketServer)

        let settings = try container.decode(Settings.self, forKey: .settings)

        // File map is used so that libraries can make tests without
        // doing a lot of internal hacking for danger, or weird DI in their
        // own code. A bit of a trade-off in complexity for Danger Swift, but I
        // think if it leads to more tested plugins, it's a good spot to be in.
        if let fileMap = try container.decodeIfPresent([String: String].self, forKey: .fileMap) {
            utils = DangerUtils(fileMap: fileMap)
        } else {
            utils = DangerUtils(fileMap: [:])
        }
    }
}

extension DangerDSL {
    var runningOnGithub: Bool {
        return github != nil
    }

    var runningOnBitbucketServer: Bool {
        return bitbucketServer != nil
    }

    var supportsSuggestions: Bool {
        return runningOnGithub
    }
}
