# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Crd2pulumi < Formula
  desc "Generate typed CustomResources in Pulumi from Kubernetes CRDs"
  homepage "https://pulumi.com"
  version "1.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/crd2pulumi/releases/download/v1.3.0/crd2pulumi-v1.3.0-darwin-arm64.tar.gz"
      sha256 "40ac5cfebcf4b79478b17edee1eaca9b174753c77ea3cc052f90fa8ca09329de"

      def install
        bin.install "crd2pulumi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/crd2pulumi/releases/download/v1.3.0/crd2pulumi-v1.3.0-darwin-amd64.tar.gz"
      sha256 "37c393662859894ffc04ef947290bead35c556d6d06c059f7f2647d1730ffddc"

      def install
        bin.install "crd2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/crd2pulumi/releases/download/v1.3.0/crd2pulumi-v1.3.0-linux-arm64.tar.gz"
      sha256 "07f7bf1c23e61f32b3b4665c9ab5e0543801020769a876e8f03c650ec5e1dcd3"

      def install
        bin.install "crd2pulumi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/crd2pulumi/releases/download/v1.3.0/crd2pulumi-v1.3.0-linux-amd64.tar.gz"
      sha256 "37f88cf0fd8f991fd7efa929db3baffad6c98d7b9f109c438e5a43414da204ba"

      def install
        bin.install "crd2pulumi"
      end
    end
  end

  test do
    system "#{bin}/crd2pulumi version"
  end
end
