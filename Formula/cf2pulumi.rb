# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.108.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.108.4/cf2pulumi-v0.108.4-darwin-x64.tar.gz"
      sha256 "9e2319e4f18dde0e4f0c1b198655247f2180ce9d5ae29ac9427e6a2220c15065"

      def install
        bin.install "cf2pulumi"
      end
    end
    on_arm do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.108.4/cf2pulumi-v0.108.4-darwin-arm64.tar.gz"
      sha256 "b0d98f71230932f903a8bc35bbe2b468771ff4c57c19d30c6b2ba387e6b3b5ba"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.108.4/cf2pulumi-v0.108.4-linux-x64.tar.gz"
        sha256 "1712a7e35b862867a8b8a564deec3422f9d79182792395b51dc0d28243c97b75"

        def install
          bin.install "cf2pulumi"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.108.4/cf2pulumi-v0.108.4-linux-arm64.tar.gz"
        sha256 "062ab6a5d4648c6804e105a9cfb811df85be4cd46b1eb55011571a0dd34aff54"

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
