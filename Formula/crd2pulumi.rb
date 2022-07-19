# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Crd2pulumi < Formula
  desc "Generate typed CustomResources in Pulumi from Kubernetes CRDs"
  homepage "https://pulumi.com"
  version "1.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/crd2pulumi/releases/download/v1.2.1/crd2pulumi-v1.2.1-darwin-arm64.tar.gz"
      sha256 "28d0fb3aa16c8c5656505bb03aa8e0f9e71143bd9471691d65f06db7c8d7c915"

      def install
        bin.install "crd2pulumi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/crd2pulumi/releases/download/v1.2.1/crd2pulumi-v1.2.1-darwin-amd64.tar.gz"
      sha256 "06a0b60a976e03e10617edcda64668009b0886e24fd8dc960f632c9a7a8160ca"

      def install
        bin.install "crd2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/crd2pulumi/releases/download/v1.2.1/crd2pulumi-v1.2.1-linux-amd64.tar.gz"
      sha256 "21d29fa4ecaaea73222358e0e9c2a1865f0398c63813f3fe82564f0b97a801a9"

      def install
        bin.install "crd2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/crd2pulumi/releases/download/v1.2.1/crd2pulumi-v1.2.1-linux-arm64.tar.gz"
      sha256 "79e277b14ef1d5589fad08a1442c8a94f3ece214a7cc1e238ce41f77f809abd8"

      def install
        bin.install "crd2pulumi"
      end
    end
  end

  test do
    system "#{bin}/crd2pulumi version"
  end
end
