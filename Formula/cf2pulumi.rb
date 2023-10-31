# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.82.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.82.1/cf2pulumi-v0.82.1-darwin-x64.tar.gz"
      sha256 "9807b25ca2d4457c11dca7862e298af42ed945b78d9e6a5beea7cd990273f7ae"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.82.1/cf2pulumi-v0.82.1-darwin-arm64.tar.gz"
      sha256 "7b3f924f365f2b875cd569e8300641aae0475780050a911dba102cca4065b95a"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.82.1/cf2pulumi-v0.82.1-linux-x64.tar.gz"
      sha256 "926a78917e96b5a421d0773a06509442a01be89ea7e0efdf0e5a558834d304bf"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.82.1/cf2pulumi-v0.82.1-linux-arm64.tar.gz"
      sha256 "ab4d5e48d486c2a97be126346c21770396f8df66dd1f9e99bd784c99a449b40c"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  test do
    system "#{bin}/cf2pulumi version"
  end
end
