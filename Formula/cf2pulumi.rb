# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "1.26.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v1.26.0/cf2pulumi-v1.26.0-darwin-x64.tar.gz"
      sha256 "135a5714a41201dda3b35bb97126b213ac69d932ba4f8d36a0f53d653e026760"

      def install
        bin.install "cf2pulumi"
      end
    end
    on_arm do
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v1.26.0/cf2pulumi-v1.26.0-darwin-arm64.tar.gz"
      sha256 "3b39ad01666e575d1b2fa7678fdb1f9664c700ea6a7990d3f14648723cc9e170"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v1.26.0/cf2pulumi-v1.26.0-linux-x64.tar.gz"
        sha256 "f6b03f08ab62a2c75ce3b85d547e375fee8332ff521d9b97b58332a9ead443e1"

        def install
          bin.install "cf2pulumi"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/pulumi-aws-native/releases/download/v1.26.0/cf2pulumi-v1.26.0-linux-arm64.tar.gz"
        sha256 "0de5a016c38e42e8f7ce0c662d27d089b56543ece6d4a4ecb8cf6b12ba2118bf"

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
