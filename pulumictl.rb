# This file was generated by GoReleaser. DO NOT EDIT.
class Pulumictl < Formula
  desc "A swiss army knife for Pulumi development"
  homepage "https://pulumi.io"
  version "0.0.20"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/pulumi/pulumictl/releases/download/v0.0.20/pulumictl-v0.0.20-darwin-amd64.tar.gz"
    sha256 "eb9c1e93bb6f1d6864bcbb977ba568452c2b78d2bbaab0d4a565a2d3be06c151"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumictl/releases/download/v0.0.20/pulumictl-v0.0.20-linux-amd64.tar.gz"
      sha256 "eb76bd4387a18f000bfb2a0f5e4af645f4f8df9edf960c2948aa371349fcb0ff"
    end
  end

  def install
    bin.install "pulumictl"
  end
end
