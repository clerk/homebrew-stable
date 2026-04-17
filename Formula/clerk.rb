class Clerk < Formula
  desc "Clerk command-line interface"
  homepage "https://clerk.com"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v0.8.4/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "bfaf8f22cc124c1bb99c30a37f333ffe217e19c05e4fc7385e11efb29a8fbece"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v0.8.4/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "d40c97d0cddd8189d5ee2558e261bc1f895e37846e8deb6dadc64a1b06fdf11f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v0.8.4/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "7bf74b8a18cc33c78c74f66687acddfd9924a67a99da1d3d4d5cb9ab3a8b34d9"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v0.8.4/homebrew-clerk-linux-x64.tar.gz"
      sha256 "056ddc3045b38b3881fcbf7910d8557628c8a749afe9b6155b6fc36e4b7712fd"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
