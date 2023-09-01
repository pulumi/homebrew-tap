# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Arm2pulumi < Formula
  desc "A tool to convert Azure ARM Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "2.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v2.5.0/arm2pulumi-v2.5.0-darwin-x64.tar.gz"
      sha256 "ae30bf05d3e30366e31d2806508a19ad1c02e1adf51dc2cc45a2a0620052df92"

      def install
        bin.install "arm2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v2.5.0/arm2pulumi-v2.5.0-darwin-arm64.tar.gz"
      sha256 "c1392ecaa47a8cc4d254386bc96f8b11449a26c9e5b015b3c825e7b1338ef3c6"

      def install
        bin.install "arm2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v2.5.0/arm2pulumi-v2.5.0-linux-x64.tar.gz"
      sha256 "793248a04cb67162209cd52da5ae581642a1b18cb1b2f9e1a649aeaf1bf84ea0"

      def install
        bin.install "arm2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v2.5.0/arm2pulumi-v2.5.0-linux-arm64.tar.gz"
      sha256 "10541455196f720a2fd60583008837b5c26fdc25dd0c28d73d8e74265017b25d"

      def install
        bin.install "arm2pulumi"
      end
    end
  end
end
