# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.108.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.108.0/cf2pulumi-v0.108.0-darwin-x64.tar.gz"
      sha256 "146521fb481d7501855267eab09a802a66348c896594889f916e3dda7acb244b"

      def install
        bin.install "cf2pulumi"
      end
    end
    on_arm do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.108.0/cf2pulumi-v0.108.0-darwin-arm64.tar.gz"
      sha256 "865b121732b30c8fe7458baab1b3c71acbb2f469bb84f022fb3fb831e8d84b54"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.108.0/cf2pulumi-v0.108.0-linux-x64.tar.gz"
        sha256 "323cc35310d73eb41975f2e5b2979d8756a9a79cb88e1c453c7f7c29fa87d9ae"

        def install
          bin.install "cf2pulumi"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.108.0/cf2pulumi-v0.108.0-linux-arm64.tar.gz"
        sha256 "486abc63e83220e69e5f6b4f8f6470d07fca632be01ba02b9eb4a19c698663ba"

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
