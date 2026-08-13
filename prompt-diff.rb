class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.5/prompt-diff-darwin-arm64"
      sha256 "d054fe2e56a8fee02f9875ca1d8d0ed89770f7595ad50626f8164eb1be65196d"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.5/prompt-diff-darwin-amd64"
      sha256 "89d589bed8241e5630a020c912bed8f81c028285fe2b57821131ab7fc4719915"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.5/prompt-diff-linux-arm64"
      sha256 "f8b2419715fafb5d55a18b7e9b2ae102cce2136cebb7a2c1645ba0fe45ea9ad1"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.5/prompt-diff-linux-amd64"
      sha256 "fd7d0183f62fb2b6f9124fac4e8a338fbb3832cf660d639c4a64f19c359abd9a"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.0.5", shell_output("#{bin}/prompt-diff version")
  end
end
