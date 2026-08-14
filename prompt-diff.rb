class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.14.0/prompt-diff-darwin-arm64"
      sha256 "a1a57b2512edc788b3a3e37e7259ece247d30b6005428327a8abe5008888aef2"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.14.0/prompt-diff-darwin-amd64"
      sha256 "ce416ddb0beab0e4602a16543b7c67f5d8684589c3e2ffa01a007d2d0d92c3f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.14.0/prompt-diff-linux-arm64"
      sha256 "b069eb98380d3d83ab8179bf9b1c926de1f1676bd7baf59a79cb8595140c7404"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.14.0/prompt-diff-linux-amd64"
      sha256 "221f256bda40677ac7af9788747bb130449156545e66281eff172b5e7a18f4a0"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.14.0", shell_output("#{bin}/prompt-diff version")
  end
end
