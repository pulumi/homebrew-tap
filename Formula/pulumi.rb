# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pulumi < Formula
  desc "Pulumi - Modern Infrastructure as Code. Any cloud, any language "
  homepage "https://pulumi.com"
  version "3.34.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi/releases/download/v3.34.0/pulumi-v3.34.0-darwin-arm64.tar.gz"
      sha256 "171f97a2745c11e19549735f377b0c6e5c28c79794c1a49a02f06e25c6c85742"

      def install
        bin.install Dir["*"]

        # Install shell completions
        (bash_completion/"pulumi.bash").write Utils.safe_popen_read("#{bin}/pulumi gen-completion bash")
        (zsh_completion/"_pulumi").write Utils.safe_popen_read("#{bin}/pulumi gen-completion zsh")
        (fish_completion/"pulumi.fish").write Utils.safe_popen_read("#{bin}/pulumi gen-completion fish")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi/releases/download/v3.34.0/pulumi-v3.34.0-darwin-x64.tar.gz"
      sha256 "6a269ab7e95cd573f82e936cfebc133106f63f2a48749319c83f059144fd5324"

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
      url "https://github.com/pulumi/pulumi/releases/download/v3.34.0/pulumi-v3.34.0-linux-arm64.tar.gz"
      sha256 "0af78d538db897808ab87c6f1aa2306891bab126e67a6466313873a8ccfad8c1"

      def install
        bin.install Dir["*"]

        # Install shell completions
        (bash_completion/"pulumi.bash").write Utils.safe_popen_read("#{bin}/pulumi gen-completion bash")
        (zsh_completion/"_pulumi").write Utils.safe_popen_read("#{bin}/pulumi gen-completion zsh")
        (fish_completion/"pulumi.fish").write Utils.safe_popen_read("#{bin}/pulumi gen-completion fish")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi/releases/download/v3.34.0/pulumi-v3.34.0-linux-x64.tar.gz"
      sha256 "bc9abda8bb4dcbea8a03e8bf69e1ee133859b1a12ab38475679e2543bdf2318f"

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
