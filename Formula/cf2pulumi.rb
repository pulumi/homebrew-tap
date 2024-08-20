# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.119.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.119.0/cf2pulumi-v0.119.0-darwin-x64.tar.gz"
      sha256 "df7424901c32054009877271c5712ab9b03b01c1f270718a208638e025e9690d"

      def install
        bin.install "cf2pulumi"
      end
    end
    on_arm do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.119.0/cf2pulumi-v0.119.0-darwin-arm64.tar.gz"
      sha256 "4cd889b6f513f1f48cedbcd9d6e74ddcf9808585a503a3e841fc4db19873ee4b"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.119.0/cf2pulumi-v0.119.0-linux-x64.tar.gz"
        sha256 "8615616d86855f8b6d1de1246a54a4f5662500824c4b7f629887b3ac6e217ebe"

        def install
          bin.install "cf2pulumi"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.119.0/cf2pulumi-v0.119.0-linux-arm64.tar.gz"
        sha256 "86d18e242b7757836a0239f075242d186ba22fa289435447726d17035a4957a2"

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
