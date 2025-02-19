# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Esc < Formula
  desc "Pulumi ESC - Manage Environments, Secrets, and Configuration"
  homepage "https://pulumi.com"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/esc/releases/download/v0.12.0/esc-v0.12.0-darwin-x64.tar.gz"
      sha256 "5e6d677695dbb7dffc579bfac1af1e823224aeec3c560cdcb6ba69d422245710"

      def install
        bin.install "esc"
      end
    end
    on_arm do
      url "https://github.com/pulumi/esc/releases/download/v0.12.0/esc-v0.12.0-darwin-arm64.tar.gz"
      sha256 "ac779a97da45b436dc0ca60acc0c0d7581a3353b40f6d48b072ec0dd700359af"

      def install
        bin.install "esc"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/esc/releases/download/v0.12.0/esc-v0.12.0-linux-x64.tar.gz"
        sha256 "1561b7d2dd6f6f5ada6f8f854595b94512c6cc694d34c515767ee70434daa03e"

        def install
          bin.install "esc"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/esc/releases/download/v0.12.0/esc-v0.12.0-linux-arm64.tar.gz"
        sha256 "e56a5b80a5547d9be8e183809eb6453402474e924e1196bba915ed25cb3c3a66"

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
