class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.1.1/prompt-diff-darwin-arm64"
      sha256 "534f300ec9434893680e3df8e3785dd94c99e277df8ee9c9c7a310a3428ca83e"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.1.1/prompt-diff-darwin-amd64"
      sha256 "4689d0d66ffed4b03b9b1e7239c480709da1e0b71dfa57050d83e1998890c5b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.1.1/prompt-diff-linux-arm64"
      sha256 "53c8a47f15c31e635382132320a228a8d36c135a581c66b7f9073db8da38aade"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.1.1/prompt-diff-linux-amd64"
      sha256 "9918bda8b6bd994a0c35743d6f91b73b0cb7ad4e7df67939bc9023339ac6a188"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.1.1", shell_output("#{bin}/prompt-diff version")
  end
end
