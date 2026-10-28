class ClerkAT4 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v4.1.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "47109575c652309e50aac26d16cadf8b6c0faeb44bf3b781f2bdba259aa234fd"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v4.1.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "771c1825422fde83d986d43b712b879d1a9bbd75a16dacb7b9b1d7e8b0c60dbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v4.1.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "b4ba392b518de6b35aa576d1a3552c8ce1f8df310dddc05b2d5149ab69ef316e"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v4.1.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "21b17436441c1bd4f06a333d6957104f2f52c03f5d89639916e5751f5ce227c8"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
