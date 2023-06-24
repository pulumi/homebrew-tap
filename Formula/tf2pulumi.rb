# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tf2pulumi < Formula
  desc "A tool to convert Terraform projects to Pulumi programs"
  homepage "https://pulumi.io"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/tf2pulumi/releases/download/v0.12.0/tf2pulumi-v0.12.0-darwin-arm64.tar.gz"
      sha256 "464800b186d584e74bfa9cffa2cff05f45dd98e8bdd72f98d32682324e5dcb22"

      def install
        bin.install "tf2pulumi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/tf2pulumi/releases/download/v0.12.0/tf2pulumi-v0.12.0-darwin-x64.tar.gz"
      sha256 "0dce76b5c78073df4795d8df076ef34eab1226f8338262fea3c960a0f0a91c97"

      def install
        bin.install "tf2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/tf2pulumi/releases/download/v0.12.0/tf2pulumi-v0.12.0-linux-x64.tar.gz"
      sha256 "f2d0d1b377140d1db0a8d944e55fd78af787769ddb1025134697e5ce8131781e"

      def install
        bin.install "tf2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/tf2pulumi/releases/download/v0.12.0/tf2pulumi-v0.12.0-linux-arm64.tar.gz"
      sha256 "2da8b1b4cecab0a25514351a776aa3c35d7677e3805e8b2408d7bfbb2f763b71"

      def install
        bin.install "tf2pulumi"
      end
    end
  end

  test do
    system "#{bin}/tf2pulumi version"
  end
end
