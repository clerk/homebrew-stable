class ClerkAT1 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "1.2.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.2.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "1d4ed6e04a783b4b37be0940121eba10f16e190a753d0d112ef8ef2b67b22055"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.2.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "a599168a891badfd249504abf7cf3695b1518aa6b19a88962c97b80d0ee3bbe6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.2.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "791889906d0852438abe8c70cc913cad724fa912fff21fe1d410d20008322775"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.2.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "7ce36ec1c9755c3a3ae1411e642387dba509031c634a30b52e3561739c5b27cf"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
