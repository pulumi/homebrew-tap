# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Esc < Formula
  desc "Pulumi ESC - Manage Environments, Secrets, and Configuration"
  homepage "https://pulumi.com"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/esc/releases/download/v0.11.1/esc-v0.11.1-darwin-x64.tar.gz"
      sha256 "be256cdd331c69f294be3713d1ec2de611d1cd8035282cd527f4778b4a91e4cf"

      def install
        bin.install "esc"
      end
    end
    on_arm do
      url "https://github.com/pulumi/esc/releases/download/v0.11.1/esc-v0.11.1-darwin-arm64.tar.gz"
      sha256 "f1b81424b056de0d7d262cf8dce6f70a364bb1f0989f1e918891bff9677ce35a"

      def install
        bin.install "esc"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/esc/releases/download/v0.11.1/esc-v0.11.1-linux-x64.tar.gz"
        sha256 "ab9522b0efe6137c2231b53fde372472977b62f33caad55c24534d0df77b78e8"

        def install
          bin.install "esc"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/esc/releases/download/v0.11.1/esc-v0.11.1-linux-arm64.tar.gz"
        sha256 "75d5a4d2b5c79ea7ae27a139fbfe5f7d4db1d558716231ebf1e3acaadc7daaa9"

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
