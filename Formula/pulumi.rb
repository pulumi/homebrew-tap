# typed: false
# frozen_string_literal: true

# This file was generated by https://github.com/pulumi/pulumi/blob/master/.github/scripts/generate-homebrew-tap
class Pulumi < Formula
  desc "Pulumi - Modern Infrastructure as Code. Any cloud, any language "
  homepage "https://pulumi.com"
  version "3.146.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi/releases/download/v3.146.0/pulumi-v3.146.0-darwin-x64.tar.gz"
      sha256 "8bba24fb3a8729a04a7c6ac8e840520afbabdc188e2fdadb219540ffb9f99e61"

      def install
        bin.install Dir["*"]

        # Install shell completions
        (bash_completion/"pulumi.bash").write Utils.safe_popen_read("#{bin}/pulumi gen-completion bash")
        (zsh_completion/"_pulumi").write Utils.safe_popen_read("#{bin}/pulumi gen-completion zsh")
        (fish_completion/"pulumi.fish").write Utils.safe_popen_read("#{bin}/pulumi gen-completion fish")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi/releases/download/v3.146.0/pulumi-v3.146.0-darwin-arm64.tar.gz"
      sha256 "0c5975f824c228490c79fde8ede6e2a1df5fb29be0b02ddf1cb83589594f8c8c"

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
      url "https://github.com/pulumi/pulumi/releases/download/v3.146.0/pulumi-v3.146.0-linux-arm64.tar.gz"
      sha256 "0a59e0ae3ce6af0655d5bda4068da79bd2aae7fbf9195932ef90da129a557c10"

      def install
        bin.install Dir["*"]

        # Install shell completions
        (bash_completion/"pulumi.bash").write Utils.safe_popen_read("#{bin}/pulumi gen-completion bash")
        (zsh_completion/"_pulumi").write Utils.safe_popen_read("#{bin}/pulumi gen-completion zsh")
        (fish_completion/"pulumi.fish").write Utils.safe_popen_read("#{bin}/pulumi gen-completion fish")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi/releases/download/v3.146.0/pulumi-v3.146.0-linux-x64.tar.gz"
      sha256 "63230fc98be2effefb78d5231d3b9dd4bb08ea5aa46ecb6c743b7869cba91a49"

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
