class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  url "https://github.com/320exh/prompt-diff/releases/download/v1.0.0/prompt-diff-darwin-amd64"
  sha256 "f60b38f887b8b9c5e10325a97b1aa2c667be04d1c20360eb56a19c31f1185d45"
  license "MIT"
  version "1.0.0"

  def install
    bin.install "prompt-diff-darwin-amd64" => "prompt-diff"
  end

  test do
    assert_match "v1.0.0", shell_output("#{bin}/prompt-diff version")
  end
end