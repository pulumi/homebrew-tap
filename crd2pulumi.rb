# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Crd2pulumi < Formula
  desc "Generate typed CustomResources in Pulumi from Kubernetes CRDs"
  homepage "https://pulumi.com"
  version "1.0.6"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pulumi/crd2pulumi/releases/download/v1.0.6/crd2pulumi-v1.0.6-darwin-amd64.tar.gz"
    sha256 "64be28356132a51069ab24c5d0a1d60240ce3158d26e3b0c420474e659ecda63"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pulumi/crd2pulumi/releases/download/v1.0.6/crd2pulumi-v1.0.6-linux-amd64.tar.gz"
    sha256 "d2d5ae693efc95ee1b6604188b0195ec80e7ed0d44e91d181884a32bec751642"
  end

  def install
    bin.install "crd2pulumi"
  end
end