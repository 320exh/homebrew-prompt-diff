class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.9.0/prompt-diff-darwin-arm64"
      sha256 "e75814889877cacc7e4139ae1fa0ae5c1fe516dd1e84388989ef4bcfded14a97"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.9.0/prompt-diff-darwin-amd64"
      sha256 "c3676157b484d78b698a93cd3326589dd1699def2631fbdeeb51cfe5ada38d28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.9.0/prompt-diff-linux-arm64"
      sha256 "38771b69b02957b08a8e79e6df520de2a2f8a450f743a5a4de69a3a7d8273ec1"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.9.0/prompt-diff-linux-amd64"
      sha256 "f7ca6afc9b8cb1b4b52db00d20ed658cd9a49673737da0876d762312bf73900d"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.9.0", shell_output("#{bin}/prompt-diff version")
  end
end
