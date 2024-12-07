# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "1.13.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v1.13.0/cf2pulumi-v1.13.0-darwin-x64.tar.gz"
      sha256 "3fc87a79333f4c442fae86b66174432d11809dc717b194d7702a832ab379a7c9"

      def install
        bin.install "cf2pulumi"
      end
    end
    on_arm do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v1.13.0/cf2pulumi-v1.13.0-darwin-arm64.tar.gz"
      sha256 "abd5d7f859394d42b551c8ecc4b12e380ed968c08cd2afd29e9b0bf70dba7477"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v1.13.0/cf2pulumi-v1.13.0-linux-x64.tar.gz"
        sha256 "84ffe4144672744eaa34ecc986b98da18e1fd27d5d6d3c701142601a90173088"

        def install
          bin.install "cf2pulumi"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v1.13.0/cf2pulumi-v1.13.0-linux-arm64.tar.gz"
        sha256 "99cfa182d8b41d63ebc5cb1460939fb908bfc79954c9a89488304410bfe1d6e0"

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
