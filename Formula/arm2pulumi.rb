# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Arm2pulumi < Formula
  desc "A tool to convert Azure ARM Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "2.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v2.4.0/arm2pulumi-v2.4.0-darwin-x64.tar.gz"
      sha256 "01d907152d1a6eb8a768a6258245f3bdf0cf3446ff15ad9b3a48783fd78a30e2"

      def install
        bin.install "arm2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v2.4.0/arm2pulumi-v2.4.0-darwin-arm64.tar.gz"
      sha256 "b1b2223b4ac194eabf3411da9a1dd40f350f168652f78fb31567ba033221db6d"

      def install
        bin.install "arm2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v2.4.0/arm2pulumi-v2.4.0-linux-x64.tar.gz"
      sha256 "c6d38af36486963eb14431fa25c33c9dcf03b5b9f9c907c01628b6768719c2f6"

      def install
        bin.install "arm2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v2.4.0/arm2pulumi-v2.4.0-linux-arm64.tar.gz"
      sha256 "8b073d156bc04401ce668c774a33b77db7d191a42d451535820a4caa3d4b9ee3"

      def install
        bin.install "arm2pulumi"
      end
    end
  end
end
