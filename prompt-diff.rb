class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.1.2/prompt-diff-darwin-arm64"
      sha256 "aaff05d67c0c32d7c89e97c7bca81808f7f876a737501e05e894ffcde0bb9de8"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.1.2/prompt-diff-darwin-amd64"
      sha256 "bf20745b802302e4fb61167acd5299917d3241b9ef28b3b2443e9769b060d796"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.1.2/prompt-diff-linux-arm64"
      sha256 "66a4671cd06dbbd968650b5af74772eb34944d5b8734f3b71a4f5020253ebdba"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.1.2/prompt-diff-linux-amd64"
      sha256 "2c5eb91b6b67c76673344646c4d0987ffa1071e7137762f00d74ac0384570d4c"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.1.2", shell_output("#{bin}/prompt-diff version")
  end
end
