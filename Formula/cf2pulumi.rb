# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.118.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.118.0/cf2pulumi-v0.118.0-darwin-x64.tar.gz"
      sha256 "1af27bb56d5d01547f61d91a6af29fd15b187819336fb9a8599c827574bcf240"

      def install
        bin.install "cf2pulumi"
      end
    end
    on_arm do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.118.0/cf2pulumi-v0.118.0-darwin-arm64.tar.gz"
      sha256 "dade3a3a899a7a0731ad981e6e350df47cbe7d79f871f1ac5ad0b408732a93a9"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.118.0/cf2pulumi-v0.118.0-linux-x64.tar.gz"
        sha256 "af32a57d7302f7332b53fe44c488044c76b9f095deec5460de643a9372ac3765"

        def install
          bin.install "cf2pulumi"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.118.0/cf2pulumi-v0.118.0-linux-arm64.tar.gz"
        sha256 "802546e9c3531156ce893dcdf8f9021607b2355e8a7f1899f4e78b18664d5f89"

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
