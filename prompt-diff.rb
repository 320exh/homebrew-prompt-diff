class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.7.0/prompt-diff-darwin-arm64"
      sha256 "3924379cd7037c82b609f123198f8e0f0fbb55054c2d389859ce8f6d5d9cb26e"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.7.0/prompt-diff-darwin-amd64"
      sha256 "4b049588551dca8e2f19a53258c1c5b9797f2b92983b706d8f55fa45f04eb5ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.7.0/prompt-diff-linux-arm64"
      sha256 "a4068cd29f7134e45891e0a801721b1347b91622c6103bb984aa250447d861b2"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.7.0/prompt-diff-linux-amd64"
      sha256 "68328a7a93de71ae718c3665dac34a5b248f8b69b4ef5d0feb5f9c5fb6408316"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.7.0", shell_output("#{bin}/prompt-diff version")
  end
end
