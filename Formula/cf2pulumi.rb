# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.64.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.64.0/cf2pulumi-v0.64.0-darwin-x64.tar.gz"
      sha256 "839ba7d523885f3b09c9efffb2f4c14bfb20b60f006a9ffa36003a2204584505"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.64.0/cf2pulumi-v0.64.0-darwin-arm64.tar.gz"
      sha256 "2e18e18f02bcf480dcee7bc9299a179ee3cff8e30931d0ce3fc70d22af471531"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.64.0/cf2pulumi-v0.64.0-linux-x64.tar.gz"
      sha256 "cd7bb36f560df1b737761012ece3c87d5f31ccccf084c0375573d62389bae254"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.64.0/cf2pulumi-v0.64.0-linux-arm64.tar.gz"
      sha256 "032f71dd510cad1a553a3ac130a2adbbeb6b2ee9e690358b510f23ae911265a6"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  test do
    system "#{bin}/cf2pulumi version"
  end
end
