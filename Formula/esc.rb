# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Esc < Formula
  desc "Pulumi ESC - Manage Environments, Secrets, and Configuration"
  homepage "https://pulumi.com"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/esc/releases/download/v0.10.0/esc-v0.10.0-darwin-x64.tar.gz"
      sha256 "b0bf6c9da7d4b4e9748943c4b9135f130972744c75451527d717fb193c5f75d2"

      def install
        bin.install "esc"
      end
    end
    on_arm do
      url "https://github.com/pulumi/esc/releases/download/v0.10.0/esc-v0.10.0-darwin-arm64.tar.gz"
      sha256 "6400796a29041411a2676c24ec5ae560f3b212fadf352c245308a7f2826a7d4f"

      def install
        bin.install "esc"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/esc/releases/download/v0.10.0/esc-v0.10.0-linux-x64.tar.gz"
        sha256 "c88d04aa0500ea6592656d07da9c3c3c7c456c47ac5db6fbdefda5ca51b7c6c8"

        def install
          bin.install "esc"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/esc/releases/download/v0.10.0/esc-v0.10.0-linux-arm64.tar.gz"
        sha256 "31c2446a9fa1176dd0066c33e8e572fdab82eb6d81cbcfe82d71e4c914897c00"

        def install
          bin.install "esc"
        end
      end
    end
  end

  test do
    system "#{bin}/esc version"
  end
end
