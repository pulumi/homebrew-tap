# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.66.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.66.0/cf2pulumi-v0.66.0-darwin-x64.tar.gz"
      sha256 "40a19e01dda3cace2675c26dd52b3da8b1d76ca722e1de1452711fce9bcd4ae0"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.66.0/cf2pulumi-v0.66.0-darwin-arm64.tar.gz"
      sha256 "474a04e8a3f75018ab991fd30a68967d2051d23854aa2047c4dd261fc5ee4a42"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.66.0/cf2pulumi-v0.66.0-linux-x64.tar.gz"
      sha256 "959130a0f403a7178224247674ee5cdb98d22f402ce8116c684da4c0c0fce6ee"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.66.0/cf2pulumi-v0.66.0-linux-arm64.tar.gz"
      sha256 "f89b36c7b16c652aff5af2d8a89f21fdd9f05dc436fa18a1d1a4951116585373"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  test do
    system "#{bin}/cf2pulumi version"
  end
end
