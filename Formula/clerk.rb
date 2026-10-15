class Clerk < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v4.0.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "edac696b5f84f2edbd18a8b366d5bd8d340cdc676a244364d9fd62f6eebcff8b"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v4.0.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "b937e366557c5590c46fb5e969cdc83b187caf142f4ae1c93ae9d66c3cab5977"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v4.0.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "e210725519edd60a3798244de39b6831f8dfd63d4cf725720157586031cb2404"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v4.0.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "3559f7c24d8d06a5b878976789248efc5f8be0d311d85b88b316b9900d618283"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
