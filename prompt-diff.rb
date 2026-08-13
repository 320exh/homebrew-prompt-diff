class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.3.0/prompt-diff-darwin-arm64"
      sha256 "1ee82afca613fef586f10708c349b4af1be3d9541446290ca32c211f8244a686"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.3.0/prompt-diff-darwin-amd64"
      sha256 "a6e58d90ea11fde4ac059ce073c84584d7a9ad3f69c4aaa14be89bc0b04b7779"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.3.0/prompt-diff-linux-arm64"
      sha256 "2b758a19ca69a3402a0a2039b5c48460560e33d7245bf5eb2a3bf05bfa34b84f"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.3.0/prompt-diff-linux-amd64"
      sha256 "7e56fc89f5074e5451187d79ed887e392f045344e57291244221f7f43185c622"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.3.0", shell_output("#{bin}/prompt-diff version")
  end
end
