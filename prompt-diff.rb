class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.6.0/prompt-diff-darwin-arm64"
      sha256 "0eb903e2278bc3352cdb155d2e51f1d527629208475744147cb8f3afd98ecc7f"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.6.0/prompt-diff-darwin-amd64"
      sha256 "0ed7f22999f8a15613d25d60c90fb1f1e4ed71ae32e96b373a8d53ebaab6f819"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.6.0/prompt-diff-linux-arm64"
      sha256 "36a4b2d0146d269fe38516a686d908274b3de5ec5bb9d777ce05fcc70d810e2f"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.6.0/prompt-diff-linux-amd64"
      sha256 "069030d7c632a6ece6439d50efee3242ab3ed285015dc8925e436ec7d0219385"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.6.0", shell_output("#{bin}/prompt-diff version")
  end
end
