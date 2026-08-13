class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.1/prompt-diff-darwin-arm64"
      sha256 "340218b5bce703df8ee9ae7e3f22a044ee8bcf25050c09cd87e5ec2e74c534b8"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.1/prompt-diff-darwin-amd64"
      sha256 "a77e45fc0643e56703bce2e9b32cb2f3f908f2f28c9ae6589fac43ba3a055fe4"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.0.1", shell_output("#{bin}/prompt-diff version")
  end
end
