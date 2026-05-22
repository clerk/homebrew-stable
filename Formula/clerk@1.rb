class ClerkAT1 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "1.4.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.4.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "1f16569250ba657693c109e510b9a0ad6548438e7f43d22e696a90c56ec3bae1"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.4.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "6dd9fcdeb31ccb0d1ff2ae532ad947d55e12c033ebe03fc207e32335143175a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.4.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "c82f5cb42e7d340649e6350352f543722e42caa88f8a3adf95df792da0722511"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.4.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "bf05b4b51b50ae25093ed3e0dc953e082545e4456faca7ec70d6eaf441f9e812"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
