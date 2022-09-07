# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.28.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.28.0/cf2pulumi-v0.28.0-darwin-x64.tar.gz"
      sha256 "20e3bf11e60711615e8e949245ecc415259d37ae2319dd8095116068f81e44cb"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.28.0/cf2pulumi-v0.28.0-darwin-arm64.tar.gz"
      sha256 "3d6420e07653c0e9e2e26e3377c9218d0b9c610ad10618f0940eeff9d7f776e7"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.28.0/cf2pulumi-v0.28.0-linux-x64.tar.gz"
      sha256 "f7e25855f98fc3b8effe64bc5c8fee5d43fa4570cc6ebe5a1b52d8d931bb4af8"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.28.0/cf2pulumi-v0.28.0-linux-arm64.tar.gz"
      sha256 "aee51ae46582d4c5fd3e7c936fe747e4b737d09ca246ba4d1e6f374ca278d2be"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  test do
    system "#{bin}/cf2pulumi version"
  end
end
