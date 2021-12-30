# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pulumi < Formula
  desc "Pulumi - Modern Infrastructure as Code. Any cloud, any language "
  homepage "https://pulumi.com"
  version "3.21.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi/releases/download/v3.21.0/pulumi-v3.21.0-darwin-arm64.tar.gz"
      sha256 "07f9537d48fef54871362ba218e694eab33b1f2fd0e76dff11dfe0dd06df1a90"

      def install
        bin.install Dir["*"]

        # Install shell completions
        (bash_completion/"pulumi.bash").write Utils.safe_popen_read("#{bin}/pulumi gen-completion bash")
        (zsh_completion/"_pulumi").write Utils.safe_popen_read("#{bin}/pulumi gen-completion zsh")
        (fish_completion/"pulumi.fish").write Utils.safe_popen_read("#{bin}/pulumi gen-completion fish")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi/releases/download/v3.21.0/pulumi-v3.21.0-darwin-x64.tar.gz"
      sha256 "e50a074c281c71cb44a78bde2bf680c53c92b2e554ca3f62311bfa11ad532a8c"

      def install
        bin.install Dir["*"]

        # Install shell completions
        (bash_completion/"pulumi.bash").write Utils.safe_popen_read("#{bin}/pulumi gen-completion bash")
        (zsh_completion/"_pulumi").write Utils.safe_popen_read("#{bin}/pulumi gen-completion zsh")
        (fish_completion/"pulumi.fish").write Utils.safe_popen_read("#{bin}/pulumi gen-completion fish")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi/releases/download/v3.21.0/pulumi-v3.21.0-linux-x64.tar.gz"
      sha256 "6738f869fac5a3232bae6a9df17ba4689a70d05d8c1776e4fbdbea6da77c9df0"

      def install
        bin.install Dir["*"]

        # Install shell completions
        (bash_completion/"pulumi.bash").write Utils.safe_popen_read("#{bin}/pulumi gen-completion bash")
        (zsh_completion/"_pulumi").write Utils.safe_popen_read("#{bin}/pulumi gen-completion zsh")
        (fish_completion/"pulumi.fish").write Utils.safe_popen_read("#{bin}/pulumi gen-completion fish")
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi/releases/download/v3.21.0/pulumi-v3.21.0-linux-arm64.tar.gz"
      sha256 "47164e655c34ce538db87899ac5ede4ee192d25bc1a2bb3ed7fc757b2bf4c845"

      def install
        bin.install Dir["*"]

        # Install shell completions
        (bash_completion/"pulumi.bash").write Utils.safe_popen_read("#{bin}/pulumi gen-completion bash")
        (zsh_completion/"_pulumi").write Utils.safe_popen_read("#{bin}/pulumi gen-completion zsh")
        (fish_completion/"pulumi.fish").write Utils.safe_popen_read("#{bin}/pulumi gen-completion fish")
      end
    end
  end

  conflicts_with "pulumi"

  test do
    system "#{bin}/pulumi version"
  end
end
