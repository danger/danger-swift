---
title: Danger + GitLab
subtitle: Self-Hosted
layout: guide_sw
order: 5
blurb: An overview of using Danger with GitLab, and some examples
---

To use Danger Swift with GitLab: you'll need to create a new account for Danger to use, then set the following environment
variables on your CI system:

- `DANGER_GITLAB_HOST` = Defaults to `https://gitlab.com` but you can use it for your own url
- `DANGER_GITLAB_API_TOKEN` = An access token for the account which will post comments

Then in your Dangerfiles you will have a fully fleshed out `danger.gitlab` object to work with. For example:

```swift
if (danger.gitLab.mergeRequest.title.contains("WIP")) {
  warn("MR is considered WIP")
}
```

The DSL is expansive, you can see all the details inside the [Danger Swift Reference][ref], but the TLDR is:

```swift
danger.gitLab.

  /** The pull request and repository metadata */
  metadata: RepoMetaData
  /** The Merge Request metadata */
  mergeRequest: GitLabMR
```
