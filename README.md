# Pulumi homebrew-tap

This repo is a [tap](https://docs.brew.sh/Taps) for some of Pulumi's software.

Its has 3 purposes:

- Provide an easy way to publish pre-release and feature binaries via homebrew for users who like to live on the cutting edge
- Provide a repository for some Pulumi tools, like [tf2pulumi](https://github.com/pulumi/tf2pulumi) and [pulumictl](https://github.com/pulumi/pulumictl)
- Allow Pulumi to test out changes to homebrew taps, without breaking homebrew-core

**The pulumi CLI releases will continue to be hosted in the homebrew-core repository. Most users should be installing Pulumi from there!**

## Usage

Adding this tap is as easy as:

```
brew tap pulumi/tap
```
