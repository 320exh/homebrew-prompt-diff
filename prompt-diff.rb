class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.4.0/prompt-diff-darwin-arm64"
      sha256 "c48187e58e7be91d0aa968add520c472c0d2f478c400f175952f981ed9bb9607"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.4.0/prompt-diff-darwin-amd64"
      sha256 "8272d7f2cc7f9416c04db1b982a0c5898f21ff08501f8e2a43f50b9097156bc5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.4.0/prompt-diff-linux-arm64"
      sha256 "86f7fb7ab47cb29a2b2543758be73ec833ce9099cce3a18db23dc1a0016c495d"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.4.0/prompt-diff-linux-amd64"
      sha256 "289e00c745e1dc36afd2f261dafd801d01fddc494701e34a6035cbdbd428f903"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.4.0", shell_output("#{bin}/prompt-diff version")
  end
end
