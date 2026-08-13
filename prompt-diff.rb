class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.4/prompt-diff-darwin-arm64"
      sha256 "2fa26d2aa2ae1592953c64f1f0f884ae0a3c3055372de0a7c5b7f4f2318b119e"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.4/prompt-diff-darwin-amd64"
      sha256 "b8c44988ebddda9651c3efa56a9f2c7b472daa2129521d423ba65d3276132799"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.0.4", shell_output("#{bin}/prompt-diff version")
  end
end
