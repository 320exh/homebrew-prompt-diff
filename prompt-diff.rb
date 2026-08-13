class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.6/prompt-diff-darwin-arm64"
      sha256 "b05a91dd3a914535a20c3e40fba38b1ef6d691dbe60a88d067732b87f86c134b"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.6/prompt-diff-darwin-amd64"
      sha256 "dda5f282308d848c7fa95d5c0b354285c718b6ce35cf228265e3006b2d17ee0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.6/prompt-diff-linux-arm64"
      sha256 "560396ee954eaa3a31053b756dbc0e5f1918d7d970e1d0d092d86df4ed64c20c"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.6/prompt-diff-linux-amd64"
      sha256 "cb9f6fef455cd8e43e458caf4352dd261f618ab59c220d7264775fa59ca5a6ea"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.0.6", shell_output("#{bin}/prompt-diff version")
  end
end
