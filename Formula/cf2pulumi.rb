# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.45.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.45.0/cf2pulumi-v0.45.0-darwin-x64.tar.gz"
      sha256 "3b9235c3e3abfbf49918b10c73c67e756f085b6e552e3d96c5307ea660f92cdc"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.45.0/cf2pulumi-v0.45.0-darwin-arm64.tar.gz"
      sha256 "ae3ce7419adace79ef645486372bde121e2bfc7b95216b31e4299b16239254b7"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.45.0/cf2pulumi-v0.45.0-linux-x64.tar.gz"
      sha256 "18338a5f6cf31f17442079ca68f82903d07b2e90ec538595d338efaff283776a"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.45.0/cf2pulumi-v0.45.0-linux-arm64.tar.gz"
      sha256 "287618ea1d5ec1cf7c0918ed6a7acea2e6af95d26d0477892826d0a4c9316165"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  test do
    system "#{bin}/cf2pulumi version"
  end
end
