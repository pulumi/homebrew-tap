# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "1.14.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v1.14.0/cf2pulumi-v1.14.0-darwin-x64.tar.gz"
      sha256 "3af3e1f8c3b7dfffdae6cbd21a0328430409e008ea63a0a602cf2aa9ce57eb63"

      def install
        bin.install "cf2pulumi"
      end
    end
    on_arm do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v1.14.0/cf2pulumi-v1.14.0-darwin-arm64.tar.gz"
      sha256 "850973054937f868a06ac08ad5bca2f7b08802d995b2e570829a2473a80dd827"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v1.14.0/cf2pulumi-v1.14.0-linux-x64.tar.gz"
        sha256 "154127074865be4d87603611bfefb0e575391302bec0d4794982941e138e5821"

        def install
          bin.install "cf2pulumi"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v1.14.0/cf2pulumi-v1.14.0-linux-arm64.tar.gz"
        sha256 "11404df3ef04cbcd1b6ef68a4ce6d82e387e431931e75d864fc156f375c8a0ea"

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
