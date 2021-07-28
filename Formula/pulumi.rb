# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pulumi < Formula
  desc "Pulumi - Modern Infrastructure as Code. Any cloud, any language "
  homepage "https://pulumi.com"
  version "3.9.0"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi/releases/download/v3.9.0/pulumi-v3.9.0-darwin-x64.tar.gz"
      sha256 "3b2a43fe809d742b42c134c3f9137eb37aa1bb6ab30a5eb529fe5fe237e15587"
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi/releases/download/v3.9.0/pulumi-v3.9.0-darwin-arm64.tar.gz"
      sha256 "9cbd4b1a54f63851ff93276fa7f36e92b2ee25fa9f073a4604dfb45f835f698f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi/releases/download/v3.9.0/pulumi-v3.9.0-linux-x64.tar.gz"
      sha256 "858f799f0756a113d66360c687af4d388d6f5c88071bb1464bd4316de21fb13f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi/releases/download/v3.9.0/pulumi-v3.9.0-linux-arm64.tar.gz"
      sha256 "877e938509b9099f5b1bb79116ff7293d6d96a1ba1b29d3f401a64bfda7c983f"
    end
  end

  conflicts_with "pulumi"

  def install
    bin.install Dir["*"]

    # Install shell completions
    (bash_completion/"pulumi.bash").write Utils.safe_popen_read("#{bin}/pulumi gen-completion bash")
    (zsh_completion/"_pulumi").write Utils.safe_popen_read("#{bin}/pulumi gen-completion zsh")
    (fish_completion/"pulumi.fish").write Utils.safe_popen_read("#{bin}/pulumi gen-completion fish")
  end

  test do
    system "#{bin}/pulumi version"
  end
end
