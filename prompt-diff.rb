class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.5.0/prompt-diff-darwin-arm64"
      sha256 "d94bed2a5c924dade1adca31985f4c0f2fb3bb081f5a2d9745fbd29e0a6dd5c6"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.5.0/prompt-diff-darwin-amd64"
      sha256 "28b899b2c9511bbcfa5bf58b2a828ec38e380d0f048997f89ced2d59683745e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.5.0/prompt-diff-linux-arm64"
      sha256 "efdace75c0ce8be1db76b53d485832978c24eacfd04418635b691a4843ce3bd9"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.5.0/prompt-diff-linux-amd64"
      sha256 "005ecfd99fcb05ba32fb3f87c8fabad1425d31e74dacf8627f53a54b942d4bea"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.5.0", shell_output("#{bin}/prompt-diff version")
  end
end
