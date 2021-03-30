# This file was generated by GoReleaser. DO NOT EDIT.
class Pulumictl < Formula
  desc "A swiss army knife for Pulumi development"
  homepage "https://pulumi.io"
  version "0.0.22"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/pulumi/pulumictl/releases/download/v0.0.22/pulumictl-v0.0.22-darwin-amd64.tar.gz"
    sha256 "1ecd5644ec58bfec81a8ffdf551f30fe8d76c30016fe96f4b5bee2ea48b28bca"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumictl/releases/download/v0.0.22/pulumictl-v0.0.22-linux-amd64.tar.gz"
      sha256 "136f2fa7afe3efdbfa88abb731d93a08b56a3d068633d0d5afd873a3d9cd5be0"
    end
  end

  def install
    bin.install "pulumictl"
  end
end
