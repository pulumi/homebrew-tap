# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.96.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.96.0/cf2pulumi-v0.96.0-darwin-x64.tar.gz"
      sha256 "a492b3ff3cd9312043c145894b382c0f4781cb7765edf742f0edfeda91a13853"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.96.0/cf2pulumi-v0.96.0-darwin-arm64.tar.gz"
      sha256 "0c9f2d9f1280a684b77c253b582613aaf760b32aa45611791eaf669a0b9fa89c"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.96.0/cf2pulumi-v0.96.0-linux-x64.tar.gz"
      sha256 "9326788d6f465f2f07e03ebcfe6a40be422bfc6452777f03b451739c3c0f39c8"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.96.0/cf2pulumi-v0.96.0-linux-arm64.tar.gz"
      sha256 "c070b79405a107e441966b1336a5eb5cdf254595f7b0994219ec4113d28f0ac5"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  test do
    system "#{bin}/cf2pulumi version"
  end
end
