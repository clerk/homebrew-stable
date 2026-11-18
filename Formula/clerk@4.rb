class ClerkAT4 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v4.3.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "a75ebf6a031192206c52841ba2ca9b27850245618ef82231b8f4e762aa0265b3"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v4.3.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "41d3f35f5f9042359cd82203a1eb9ae125d4996fe158e7257e5c23335b3321fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v4.3.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "c6392e4c61cba03145590764ba99c97c5361ae5bbc142c013346ac0b6e80714a"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v4.3.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "eb15cae56b9b34cec919bfc352abc1f2c7ef7127663300546b05c95f5b3585ce"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
