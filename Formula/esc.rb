# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Esc < Formula
  desc "Pulumi ESC - Manage Environments, Secrets, and Configuration"
  homepage "https://pulumi.com"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/esc/releases/download/v0.13.0/esc-v0.13.0-darwin-x64.tar.gz"
      sha256 "b84021977ab300d33cd4adad5fa3f07b4b4945ccd62e787306fa4f4d5c18a881"

      def install
        bin.install "esc"
      end
    end
    on_arm do
      url "https://github.com/pulumi/esc/releases/download/v0.13.0/esc-v0.13.0-darwin-arm64.tar.gz"
      sha256 "2b7a597393d284f85832389c4fe94825493d757a2b4685424314c6d65abf2a8b"

      def install
        bin.install "esc"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/esc/releases/download/v0.13.0/esc-v0.13.0-linux-x64.tar.gz"
        sha256 "9b91ad8c54613caaf406b3acde4690a1d91fd40ed4e36302a859333af8db77ae"

        def install
          bin.install "esc"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/esc/releases/download/v0.13.0/esc-v0.13.0-linux-arm64.tar.gz"
        sha256 "a25eae332b5c3f6fe16b558784e929e6c5bcf0d1cca29944f880036afe578ed4"

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
