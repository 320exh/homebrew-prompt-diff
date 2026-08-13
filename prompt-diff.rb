class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.8.0/prompt-diff-darwin-arm64"
      sha256 "767e1711e11c18d1bffa740a5a29080be7c7eff85ebcd1e10c52534ff43c690a"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.8.0/prompt-diff-darwin-amd64"
      sha256 "a223e08a614d2652deeec9261229465ef8d53b92ac44e445b537000d7dc98946"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.8.0/prompt-diff-linux-arm64"
      sha256 "c006898716aa9676355b3939ecd89574c98dff3649cb8c7a311163c2a46cb454"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.8.0/prompt-diff-linux-amd64"
      sha256 "cf77a30a904be78d6367e7b82c1db64dbacf67d5eb9767bdc5087f394746bcbc"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.8.0", shell_output("#{bin}/prompt-diff version")
  end
end
