# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.20.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.20.0/cf2pulumi-v0.20.0-darwin-x64.tar.gz"
      sha256 "4d2ed5a5a3b53aa4ef6bfd1ee514a70fd598977e07181e2e5fee8dcab57a01d0"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.20.0/cf2pulumi-v0.20.0-darwin-arm64.tar.gz"
      sha256 "12d11e36c4563ba7f1d6b21f7f5db1c68afb5275d7c2fb5e0d53cc12315edcb4"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.20.0/cf2pulumi-v0.20.0-linux-x64.tar.gz"
      sha256 "4194dbbbeb2f7ba9f95ed72e015628314e5c92ba16b052d88117b701663596b8"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.20.0/cf2pulumi-v0.20.0-linux-arm64.tar.gz"
      sha256 "98f033d6c4668de1621227947d0c89ce3c0257954b78a7f351d537e4f1c8597f"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  test do
    system "#{bin}/cf2pulumi version"
  end
end
