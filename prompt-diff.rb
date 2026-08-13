class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.2.0/prompt-diff-darwin-arm64"
      sha256 "5718b2a1e19810dbb9445f5532c3ba31c43d340d85d9dd2cb27988e433869ccb"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.2.0/prompt-diff-darwin-amd64"
      sha256 "83d1bbe5f8f1cd4a218e45fb65b64a5d5f00204d42a50d25e3cd7fed4ceafc27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.2.0/prompt-diff-linux-arm64"
      sha256 "47385933b2704fe2e40fae58ab24a7f8cb2761887b5e308e90079e618fad6e26"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.2.0/prompt-diff-linux-amd64"
      sha256 "f8b3c8f62efe8bacd8ceb447431e3a61ede0a4c82aade6b745d89ed5613e8c58"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.2.0", shell_output("#{bin}/prompt-diff version")
  end
end
