class Clerk < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v4.4.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "5d9b68ba713b287b8e5679cb041dd760be03c02e0e351ebf0c53a159c76f2e2f"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v4.4.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "b607bdb97af0c14843cd85bf9b8fab84162a1d6a9a0a793634e25eb4c5df0cd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v4.4.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "cb0e9728f96f793897014c1ce4740d58c9d620d2d4f93196667b39fbcd96d69c"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v4.4.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "09fd093f2cfef034c04f438dbf7376fb81d596825be6bd2b56f669f7600c6e25"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
