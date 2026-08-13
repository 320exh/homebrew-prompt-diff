class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.1.0/prompt-diff-darwin-arm64"
      sha256 "c30e45fea4d5d1b21d3d15d4da71b7a623562f6f4be19015edcf99889ad5522b"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.1.0/prompt-diff-darwin-amd64"
      sha256 "892cc68fe98d593d9b1665e4918e71023672343933632a0857022320e5818450"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.1.0/prompt-diff-linux-arm64"
      sha256 "23748b0bd860cc2b6ed4dbd9ca5629658fb4b8e9925350abb00796ae7f02f084"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.1.0/prompt-diff-linux-amd64"
      sha256 "0b8d142f793d8b5c53c65353df1725a116414a6b608426cdd31130876c16f7c8"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.1.0", shell_output("#{bin}/prompt-diff version")
  end
end
