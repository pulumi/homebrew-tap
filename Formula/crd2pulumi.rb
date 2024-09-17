# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Crd2pulumi < Formula
  desc "Generate typed CustomResources in Pulumi from Kubernetes CRDs"
  homepage "https://pulumi.com"
  version "1.5.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pulumi/crd2pulumi/releases/download/v1.5.2/crd2pulumi-v1.5.2-darwin-amd64.tar.gz"
      sha256 "dbde705b5e104ecd9e089626f989eb21e40c0c199901bd6c814c2d673c311c0c"

      def install
        bin.install "crd2pulumi"
      end
    end
    on_arm do
      url "https://github.com/pulumi/crd2pulumi/releases/download/v1.5.2/crd2pulumi-v1.5.2-darwin-arm64.tar.gz"
      sha256 "f99c47e6ea74f499e1cf23ea3d840f59476ca8afede92fdba71ca9e6c44f0cef"

      def install
        bin.install "crd2pulumi"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/crd2pulumi/releases/download/v1.5.2/crd2pulumi-v1.5.2-linux-amd64.tar.gz"
        sha256 "196ebcf673e157c2d7b72b215c858ed3c84fd873f62fbe85ab3b0ee55aaa11c9"

        def install
          bin.install "crd2pulumi"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pulumi/crd2pulumi/releases/download/v1.5.2/crd2pulumi-v1.5.2-linux-arm64.tar.gz"
        sha256 "274638706cac96a108eac5fcfb49fb2f167c510eef53edd58cc135f53ae23775"

        def install
          bin.install "crd2pulumi"
        end
      end
    end
  end

  test do
    system "#{bin}/crd2pulumi version"
  end
end
