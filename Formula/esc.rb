# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Esc < Formula
  desc "Pulumi ESC - Manage Environments, Secrets, and Configuration"
  homepage "https://pulumi.com"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/esc/releases/download/v0.5.1/esc-v0.5.1-darwin-arm64.tar.gz"
      sha256 "6479a8d2f74431a3dabfcfe41ac999f87a30e7c0cd2bf2282d0e83c32258aed7"

      def install
        bin.install "esc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/esc/releases/download/v0.5.1/esc-v0.5.1-darwin-x64.tar.gz"
      sha256 "ad588339d908d1a5d4a36ec1125562461b2f4994158cbd0d9520fade132caa5b"

      def install
        bin.install "esc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/esc/releases/download/v0.5.1/esc-v0.5.1-linux-arm64.tar.gz"
      sha256 "6c5b78393bec5ac8d78adea20f0e1ba6c4c938e350ddbfdcf9e2e436a37561c9"

      def install
        bin.install "esc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/esc/releases/download/v0.5.1/esc-v0.5.1-linux-x64.tar.gz"
      sha256 "4f894a101c37c6adf74fd494c7fa193854279d8e78d46e6cb92f31c8f3d8b060"

      def install
        bin.install "esc"
      end
    end
  end

  test do
    system "#{bin}/esc version"
  end
end
