# Pulumi homebrew-tap

This repo is a [tap](https://docs.brew.sh/Taps) for some of Pulumi's software.

## Usage

Adding this tap is as easy as:

```
brew tap pulumi/tap
```

## Packages Available

You can download any of the products below:

```sh
# Formulae
brew install pulumi/tap/pulumi
brew install pulumi/tap/crd2pulumi
brew install pulumi/tap/kube2pulumi
brew install pulumi/tap/pulumictl
brew install pulumi/tap/tf2pulumi
```

## What is the difference between this tap and the official Homebrew tap?

There is a Pulumi Formula available in the [official homebrew tap](https://github.com/Homebrew/homebrew-core). Formulae 
located in this tap, are maintained by the Pulumi team. This means that the binaries that this tap downloads, are the
*exact* binaries created during the Pulumi release process.