# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Arm2pulumi < Formula
  desc "A tool to convert Azure ARM Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "1.99.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v1.99.0/arm2pulumi-v1.99.0-darwin-x64.tar.gz"
      sha256 "8a516b0d896655cd543861c46c3efce311b6d3ad68f6b24126a38a0a7a4eb57d"

      def install
        bin.install "arm2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v1.99.0/arm2pulumi-v1.99.0-darwin-arm64.tar.gz"
      sha256 "16e3ea052e57e88ecac24c687397d4c8a5c2890e0654a19e6c58d5bf58224a7b"

      def install
        bin.install "arm2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v1.99.0/arm2pulumi-v1.99.0-linux-x64.tar.gz"
      sha256 "1b85b8adddf8f7c2625f18b20b6c0e477e949177454b6ee2584ed208ca8608da"

      def install
        bin.install "arm2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v1.99.0/arm2pulumi-v1.99.0-linux-arm64.tar.gz"
      sha256 "dfb4b01aa2a2cbbc691c3b5dd06c428e82509badd22ef8251463d1f0c154b6d3"

      def install
        bin.install "arm2pulumi"
      end
    end
  end
end
