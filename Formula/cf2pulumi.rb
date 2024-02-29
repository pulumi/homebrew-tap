# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.98.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.98.0/cf2pulumi-v0.98.0-darwin-x64.tar.gz"
      sha256 "c9369e34b4d43eb07456729237d659813cdd76af65e2913d92e74e8925069a43"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.98.0/cf2pulumi-v0.98.0-darwin-arm64.tar.gz"
      sha256 "f0f95f3c0eb4b0ce98714466f856b7ef6818729510b421d280634f729b781879"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.98.0/cf2pulumi-v0.98.0-linux-x64.tar.gz"
      sha256 "2c892cfbf605f1535d7ea795daf65569af4e1ab02b20c4b0b8aa5a1fab523155"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.98.0/cf2pulumi-v0.98.0-linux-arm64.tar.gz"
      sha256 "1e26067aeed1ff485e45f1058e791c014e05b51570e01396539d80c7d44fcfdc"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  test do
    system "#{bin}/cf2pulumi version"
  end
end
