# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.126.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.126.0/cf2pulumi-v0.126.0-darwin-x64.tar.gz"
      sha256 "a5b2d3c37eb5bad4a746e51b99a1361c34f56d90352c3e6fbc8413109783aecf"

      def install
        bin.install "cf2pulumi"
      end
    end
    on_arm do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.126.0/cf2pulumi-v0.126.0-darwin-arm64.tar.gz"
      sha256 "cb699ed930d92c0347176954c966712ccc76717cd46d96950612924c8453facb"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.126.0/cf2pulumi-v0.126.0-linux-x64.tar.gz"
        sha256 "5883d06ad0e2807717d9fa19a0a9163b86cc74c383d45929b0579167b3bda2e1"

        def install
          bin.install "cf2pulumi"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.126.0/cf2pulumi-v0.126.0-linux-arm64.tar.gz"
        sha256 "447ef39768d291753ef1d69586fdf780cdd0ba20df6e66c60bde44a024be68da"

        def install
          bin.install "cf2pulumi"
        end
      end
    end
  end

  test do
    system "#{bin}/cf2pulumi version"
  end
end
