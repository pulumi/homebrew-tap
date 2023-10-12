# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Esc < Formula
  desc "Pulumi ESC - Manage Environments, Secrets, and Configuration"
  homepage "https://pulumi.com"
  version "0.5.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/esc/releases/download/v0.5.4/esc-v0.5.4-darwin-arm64.tar.gz"
      sha256 "1ef1e694484eddd157d8bb14159750406db13bbc20b170af4a7e952f7c9cd09f"

      def install
        bin.install "esc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/esc/releases/download/v0.5.4/esc-v0.5.4-darwin-x64.tar.gz"
      sha256 "a55eabcdd7a3ca96b7f1695541543ae026232e60f3f903a3e8b2a27454415d80"

      def install
        bin.install "esc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/esc/releases/download/v0.5.4/esc-v0.5.4-linux-arm64.tar.gz"
      sha256 "5b8cd51a589eab7e9ffd24676438fc07c4bded387f6e35665c9af95f318e45f7"

      def install
        bin.install "esc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/esc/releases/download/v0.5.4/esc-v0.5.4-linux-x64.tar.gz"
      sha256 "f6f7edeb59aa546ab1cf01b5a78c6377734f171b8386f0d56b807af2a8eae0a6"

      def install
        bin.install "esc"
      end
    end
  end

  test do
    system "#{bin}/esc version"
  end
end
