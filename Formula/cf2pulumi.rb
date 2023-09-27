# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.78.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.78.0/cf2pulumi-v0.78.0-darwin-x64.tar.gz"
      sha256 "48ba52662d4d46c234f2ebb9674bed271d356503f11f4b4ed1998f6706774fd8"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.78.0/cf2pulumi-v0.78.0-darwin-arm64.tar.gz"
      sha256 "557a0f0408f722be348bbbf8bbbe48947e065cf09e1c1c591e8df28b4dfe4864"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.78.0/cf2pulumi-v0.78.0-linux-x64.tar.gz"
      sha256 "43380ee719f74e3ecfd91044f26f63038e2b60a89cbafff980e91e6be416ded1"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.78.0/cf2pulumi-v0.78.0-linux-arm64.tar.gz"
      sha256 "39c4d0fb9c4af92ed6d90f4260d4fdebad7047668dede66166b0cb76c71ef2a7"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  test do
    system "#{bin}/cf2pulumi version"
  end
end
