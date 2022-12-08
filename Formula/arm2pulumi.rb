# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Arm2pulumi < Formula
  desc "A tool to convert Azure ARM Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "1.89.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v1.89.0/arm2pulumi-v1.89.0-darwin-x64.tar.gz"
      sha256 "b50d1457120eb8ddde35b91c309c51595e0be7de4099592925a87beda3f66a6d"

      def install
        bin.install "arm2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v1.89.0/arm2pulumi-v1.89.0-darwin-arm64.tar.gz"
      sha256 "a320bfa0463aacc4e896db3c87ed81273b51f2520121fbaf705ab9e5010c4357"

      def install
        bin.install "arm2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v1.89.0/arm2pulumi-v1.89.0-linux-x64.tar.gz"
      sha256 "a2b77910d35791349ac98bdd6aa427789cefa7b5afc689ab27a9dad732bdffb0"

      def install
        bin.install "arm2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-azure-native/releases/download/v1.89.0/arm2pulumi-v1.89.0-linux-arm64.tar.gz"
      sha256 "3b2fc4c09a1586206dbd960cf32baed38127450cb81e1faa08dd0871c40df962"

      def install
        bin.install "arm2pulumi"
      end
    end
  end
end
