class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.2/prompt-diff-darwin-arm64"
      sha256 "854ff7e8b4e632c398d3563a5ff69b13659de0e6d8b76bdc9cfd3b0474bb8086"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.0.2/prompt-diff-darwin-amd64"
      sha256 "9a513030db35f791a208266d1bf2f4c7fffb9e233efd52c5e76884a8c07057b6"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.0.2", shell_output("#{bin}/prompt-diff version")
  end
end
