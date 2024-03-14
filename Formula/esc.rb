# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Esc < Formula
  desc "Pulumi ESC - Manage Environments, Secrets, and Configuration"
  homepage "https://pulumi.com"
  version "0.8.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/esc/releases/download/v0.8.3/esc-v0.8.3-darwin-arm64.tar.gz"
      sha256 "47bee7e5e2ce98745cb035f8c3da698333ac6e3f2248159fdb12f445d09fb124"

      def install
        bin.install "esc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/esc/releases/download/v0.8.3/esc-v0.8.3-darwin-x64.tar.gz"
      sha256 "7168432c2fe0d10fb295299d7fed30cb7d0100e96a77f4d8f9d97bb47c3a3e92"

      def install
        bin.install "esc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/esc/releases/download/v0.8.3/esc-v0.8.3-linux-x64.tar.gz"
      sha256 "941d8522ba6886a61fa475e6c6c654edb4bc867ac962d9310871070261ee07d5"

      def install
        bin.install "esc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/esc/releases/download/v0.8.3/esc-v0.8.3-linux-arm64.tar.gz"
      sha256 "30bcd95263bbe83906d2ad23f9a8ec824ebbe273bf86db2b8b363f71dacacea3"

      def install
        bin.install "esc"
      end
    end
  end

  test do
    system "#{bin}/esc version"
  end
end
