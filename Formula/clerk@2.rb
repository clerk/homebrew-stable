class ClerkAT2 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "2.2.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v2.2.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "e56947d3f2d48242f3dcf39e3ce28716439ba7b0c4b177f54c8d680ae5048085"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v2.2.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "2f469d5d8e78e5ff55edb98c1f604ac483c9bcc35f3374c70b02d2cef6655778"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v2.2.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "034f27cc21b7b2f945bd2d85f42f4b61a97590a6e0fd6a905f5b94b4abfc1adf"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v2.2.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "5292eb5c573b9f35edc917541aeb8a26d31864a880f12fe2232206fbd61fe802"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
