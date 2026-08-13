class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.1/prompt-diff-darwin-arm64"
      sha256 "698c427d7ae02e06c5996a57b42cfcb993b0d1aae6450c17e868cec06aa13d13"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.1/prompt-diff-darwin-amd64"
      sha256 "34a20aef3f0b0f36b4e9d29936c0a45d8f085f299a5a4bb37e81d772673e2c3c"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.0.1", shell_output("#{bin}/prompt-diff version")
  end
end
