class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v2.0.2/prompt-diff-darwin-arm64"
      sha256 "67747b457e2608834f7ecde2cd1bfd5cdd48bd866794ad7001d599dad3ef59eb"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v2.0.2/prompt-diff-darwin-amd64"
      sha256 "db7dc9b9278688f9991cc203d703a1a0b2d04642400c67ddd76813484ee0b882"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v2.0.2/prompt-diff-linux-arm64"
      sha256 "161d1e9124771cd637ce73ab39e2ecb1aa6e88a2236c93b220671b8132b35635"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v2.0.2/prompt-diff-linux-amd64"
      sha256 "aca2bde70a0612f30f1dd4fddaa2364be31efd9c162bdc24632dfad424b71431"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v2.0.2", shell_output("#{bin}/prompt-diff version")
  end
end
