class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v2.0.0/prompt-diff-darwin-arm64"
      sha256 "5ed94a90350c89131c760ffeea4e3e497d7a6c2a9ebfcff611c6be2751046324"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v2.0.0/prompt-diff-darwin-amd64"
      sha256 "f2eac9ccca1bb12a2d8f35a10f7011728f5ecd773ad292744dabed4334bdebf7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v2.0.0/prompt-diff-linux-arm64"
      sha256 "5389497f3385899fe58e17fe7825ee86d45a8dc34c594fafc4503f3647a96f37"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v2.0.0/prompt-diff-linux-amd64"
      sha256 "271814b2e459c37f7628b7133924d8ced023f7121387582dd163ffa59651a886"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v2.0.0", shell_output("#{bin}/prompt-diff version")
  end
end
