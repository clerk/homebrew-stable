class ClerkAT2 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v2.3.1/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "b45322c738da0839e5dc10fe4b298f33b2c7188ebd98fcd086fe1f7ac6aa1528"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v2.3.1/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "2e7087e348a84d245980a5f73b8ab0c20f52bd1a8d18557f2d21c1bf9b26e0f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v2.3.1/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "08b78bbeeb567abd16591e31f26b63bd131eedd6a834273a8d80bebc11cf3209"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v2.3.1/homebrew-clerk-linux-x64.tar.gz"
      sha256 "a14d533a74f059d1d99e7fff74cce683f6f450b9eb564a93b140d73c6e26c2a0"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
