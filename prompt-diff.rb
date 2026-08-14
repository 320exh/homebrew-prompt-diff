class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "2.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v2.0.1/prompt-diff-darwin-arm64"
      sha256 "9085592eecb5d0d243ab2af20789a805e4af7b84961c8e6ae1682c03abc8dd0f"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v2.0.1/prompt-diff-darwin-amd64"
      sha256 "ff63b76324918ef22cd590e02ac741265e07572d6eba9638c424b089e7a0408c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v2.0.1/prompt-diff-linux-arm64"
      sha256 "e1f2d8d192a2fdbe4ace9106294b5d9a851c3ec17aebb18a6ceb87f8ee2850d5"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v2.0.1/prompt-diff-linux-amd64"
      sha256 "3b31df3568e6dd1dff2b9aa28063fae9858d24e023543139b226065ee6668405"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v2.0.1", shell_output("#{bin}/prompt-diff version")
  end
end
