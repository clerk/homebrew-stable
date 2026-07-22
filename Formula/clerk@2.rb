class ClerkAT2 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "2.3.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v2.3.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "ce0e9305609881424b48bfeaa2580937987f16c2a53c90e584556c0fa2d033de"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v2.3.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "d364484ddbe6d380f96f068fb7b9d773c0ad380cec87c8bb499e5bda72578d85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v2.3.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "34a8ff92181e30a15df576eba6a1a97c38a7cb5ee793aeb5e0cd8fb97243ca6b"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v2.3.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "307dd459d880809435509e5ab5bb0ddcfc904d338628c62dcf8e7ec0b208f068"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
