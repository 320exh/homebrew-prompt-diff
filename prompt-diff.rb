class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.3/prompt-diff-darwin-arm64"
      sha256 "c7edc7091c776b24301121327d395f63d15c964988ce770951608ab86334ed02"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.3/prompt-diff-darwin-amd64"
      sha256 "1b81c7726d007433795d6d945d9102dc14a662ef1e1dfed59b96218ea139f7e4"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.0.3", shell_output("#{bin}/prompt-diff version")
  end
end
