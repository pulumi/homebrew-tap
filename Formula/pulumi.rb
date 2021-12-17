# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pulumi < Formula
  desc "Pulumi - Modern Infrastructure as Code. Any cloud, any language "
  homepage "https://pulumi.com"
  version "3.20.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi/releases/download/v3.20.0/pulumi-v3.20.0-darwin-arm64.tar.gz"
      sha256 "12a81b631d84d252c5c8c4bcbca4faeda4f3673c24054bf76f0033b08985b62b"

      def install
        bin.install Dir["*"]

        # Install shell completions
        (bash_completion/"pulumi.bash").write Utils.safe_popen_read("#{bin}/pulumi gen-completion bash")
        (zsh_completion/"_pulumi").write Utils.safe_popen_read("#{bin}/pulumi gen-completion zsh")
        (fish_completion/"pulumi.fish").write Utils.safe_popen_read("#{bin}/pulumi gen-completion fish")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi/releases/download/v3.20.0/pulumi-v3.20.0-darwin-x64.tar.gz"
      sha256 "5b9b77c7ad190f532d3324ed0f9b884103c7f46988b03321f10ef7f434fdfc80"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi/releases/download/v3.20.0/pulumi-v3.20.0-linux-arm64.tar.gz"
      sha256 "d501bfafa6f404de6a72099c69ad415f55efed365e0df30975539e1bcf24d652"

      def install
        bin.install Dir["*"]

        # Install shell completions
        (bash_completion/"pulumi.bash").write Utils.safe_popen_read("#{bin}/pulumi gen-completion bash")
        (zsh_completion/"_pulumi").write Utils.safe_popen_read("#{bin}/pulumi gen-completion zsh")
        (fish_completion/"pulumi.fish").write Utils.safe_popen_read("#{bin}/pulumi gen-completion fish")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi/releases/download/v3.20.0/pulumi-v3.20.0-linux-x64.tar.gz"
      sha256 "94a1d810d6cdfc251414ebff1a886ad8cd360fcc03df745b699e4867ea014049"

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
