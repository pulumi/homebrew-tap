# typed: false
# frozen_string_literal: true

# This file was generated by https://github.com/pulumi/pulumi/blob/master/.github/scripts/generate-homebrew-tap
class Pulumi < Formula
  desc "Pulumi - Modern Infrastructure as Code. Any cloud, any language "
  homepage "https://pulumi.com"
  version "3.90.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi/releases/download/v3.90.1/pulumi-v3.90.1-darwin-x64.tar.gz"
      sha256 "4efb2fa4987e1f1477bb7e90eb2dc87f96239c83d71c50cbb185630d30d080a9"

      def install
        bin.install Dir["*"]

        # Install shell completions
        (bash_completion/"pulumi.bash").write Utils.safe_popen_read("#{bin}/pulumi gen-completion bash")
        (zsh_completion/"_pulumi").write Utils.safe_popen_read("#{bin}/pulumi gen-completion zsh")
        (fish_completion/"pulumi.fish").write Utils.safe_popen_read("#{bin}/pulumi gen-completion fish")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi/releases/download/v3.90.1/pulumi-v3.90.1-darwin-arm64.tar.gz"
      sha256 "c395d16f83a3997ab216eac309c0aa0f62be079794039f314198ef6eae52a50d"

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
      url "https://github.com/pulumi/pulumi/releases/download/v3.90.1/pulumi-v3.90.1-linux-arm64.tar.gz"
      sha256 "aab4274b63bf572ada6c343f997ab69d5826db99f48822cf87c23ff73f2619bc"

      def install
        bin.install Dir["*"]

        # Install shell completions
        (bash_completion/"pulumi.bash").write Utils.safe_popen_read("#{bin}/pulumi gen-completion bash")
        (zsh_completion/"_pulumi").write Utils.safe_popen_read("#{bin}/pulumi gen-completion zsh")
        (fish_completion/"pulumi.fish").write Utils.safe_popen_read("#{bin}/pulumi gen-completion fish")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi/releases/download/v3.90.1/pulumi-v3.90.1-linux-x64.tar.gz"
      sha256 "afeb00548884f6c8b89e89eaef61abafea013fcba30330f1540cb65f86caa9ad"

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
