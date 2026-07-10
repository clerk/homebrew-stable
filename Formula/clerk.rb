class Clerk < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v2.1.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "0fd6fde019dad4e1a7a0228ba7e87c13142676d0e07ccfefc686b652b85d1759"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v2.1.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "15e6377f5de6b1e32f41fcefeea00d30a9bbcda9cbcc3602465bad85bc50569c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v2.1.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "32c9b944a6d0d1de3cdc5b2e29f1f0d6415aaca0eb9131375767e3049ff7186e"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v2.1.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "f405ef117947c28d67a17552c607f52c7ff312a801cdd8a34398b9d99921d314"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
