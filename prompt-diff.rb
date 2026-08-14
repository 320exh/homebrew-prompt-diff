class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.10.0/prompt-diff-darwin-arm64"
      sha256 "4c29557cc7c795b4cc84b82bda56358cf40786644bbe85924ebf9210631c9ce3"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.10.0/prompt-diff-darwin-amd64"
      sha256 "f742b08dc35718f0559ee1f22d6fb07ecce7cd8ae08ff478304136f81eb0eb57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.10.0/prompt-diff-linux-arm64"
      sha256 "ec4397538368b9be1e1f23beda66d216bf7761fb1a0758cb672b06eda46c336f"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.10.0/prompt-diff-linux-amd64"
      sha256 "b1415ae6ab7bceb0a8cb6798a1fcdd721305662d0a4d90399f42655c2a0bcb6b"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.10.0", shell_output("#{bin}/prompt-diff version")
  end
end
