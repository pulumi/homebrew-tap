# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.100.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.100.0/cf2pulumi-v0.100.0-darwin-x64.tar.gz"
      sha256 "a6e893088001576aff2a8ce5a502d12b3fd6ebcae8eed0cc45433191a46a8c34"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.100.0/cf2pulumi-v0.100.0-darwin-arm64.tar.gz"
      sha256 "f3000ee25ba2b7d28db83e910a2fa6cd31623db6d77b0f17c6618c286d85485b"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.100.0/cf2pulumi-v0.100.0-linux-x64.tar.gz"
      sha256 "c7697b12738af98faaa3de7a8512ede99e025f390b6113766cf22e9497c8bb15"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.100.0/cf2pulumi-v0.100.0-linux-arm64.tar.gz"
      sha256 "8447226b3734abd4f926bfc36393fec08e47d8870e09a3e29eb91f8eb772837d"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  test do
    system "#{bin}/cf2pulumi version"
  end
end
