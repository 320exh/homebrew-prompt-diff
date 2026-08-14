class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.11.0/prompt-diff-darwin-arm64"
      sha256 "eed02a056e4ee4dbf1c1f4b13eb8824be3ccf82619f6ac77ddbe6996c7ecb6c9"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.11.0/prompt-diff-darwin-amd64"
      sha256 "852c1bdbcbdfca2409bdacbb97bbf35cd74b1e76f17ad6774abd4d46a812bbda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.11.0/prompt-diff-linux-arm64"
      sha256 "5adf1edf96129cb6d01474dff3f82b1fbe1190ab449a2e9547c6567f07d2fbff"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.11.0/prompt-diff-linux-amd64"
      sha256 "eefa7e814329d4e1e061e2282fbfc6348f89cfd295c53345a5f91aff825c6a91"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.11.0", shell_output("#{bin}/prompt-diff version")
  end
end
