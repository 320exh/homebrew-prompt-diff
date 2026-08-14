class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.13.0/prompt-diff-darwin-arm64"
      sha256 "aeee8d00438a09c8cc5d75ec4419a67e6436c82d41b23adb6ac99964a5300b3d"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.13.0/prompt-diff-darwin-amd64"
      sha256 "bff8117fa6be0aee378b24b3272d1a6271d8108b4dddc581eaf5ad1d12822eab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.13.0/prompt-diff-linux-arm64"
      sha256 "55aeeaef651d467de3411316b7334f5ed54e9a09deee573fe0c6fcd4e39e447d"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.13.0/prompt-diff-linux-amd64"
      sha256 "482d5837605872ddf5fc11c418a7c83cece17b8fa2ddea700ad13eebe0c3e38b"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.13.0", shell_output("#{bin}/prompt-diff version")
  end
end
