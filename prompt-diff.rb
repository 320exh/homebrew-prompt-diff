class PromptDiff < Formula
  desc "Version, diff, and benchmark LLM system prompts"
  homepage "https://github.com/320exh/prompt-diff"
  license "MIT"
  version "1.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.12.0/prompt-diff-darwin-arm64"
      sha256 "5d4868eadccd1dd2bd8ffc1a752f1d81da20361a0f25edd9a3b862fd36e82bcc"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.12.0/prompt-diff-darwin-amd64"
      sha256 "13ed3a265a51fae87f6d953b526a2195e6313f769a52674f07139ade98b58348"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/320exh/prompt-diff/releases/download/v1.12.0/prompt-diff-linux-arm64"
      sha256 "10d75b49dbe0b40bc6606e1f9125ff1cbb88cdd13ba9a3feff062a8ecdb0dea6"
    else
      url "https://github.com/320exh/prompt-diff/releases/download/v1.12.0/prompt-diff-linux-amd64"
      sha256 "132112fc6516f53a2c5611954f479958f00a1906bbd827faf4f54779fd0f8e49"
    end
  end

  def install
    bin.install Dir["prompt-diff-*"].first => "prompt-diff"
  end

  test do
    assert_match "v1.12.0", shell_output("#{bin}/prompt-diff version")
  end
end
