# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.117.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.117.0/cf2pulumi-v0.117.0-darwin-x64.tar.gz"
      sha256 "29e568d9ac1eda80dd20d0c719e4b386921533e57bbe863757c490a1d70692e2"

      def install
        bin.install "cf2pulumi"
      end
    end
    on_arm do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.117.0/cf2pulumi-v0.117.0-darwin-arm64.tar.gz"
      sha256 "6c69ccfb939e253d0dd5e869a00fbcb93a62a443a5ef8a34b1c4b60fcd624d1d"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.117.0/cf2pulumi-v0.117.0-linux-x64.tar.gz"
        sha256 "c53a9737bf2ed2cb89a2550b58208f0e6bc153adc262947e175ca1a888d0ec80"

        def install
          bin.install "cf2pulumi"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.117.0/cf2pulumi-v0.117.0-linux-arm64.tar.gz"
        sha256 "20a1ae968f7250aa0f9135ae665bcf13ed3e2c8eeaebafafef2fd070559018a9"

        def install
          bin.install "cf2pulumi"
        end
      end
    end
  end

  test do
    system "#{bin}/cf2pulumi version"
  end
end
