class ClerkAT3 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.0.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "e574bdf161b82c9593efc8f78b493c0ba99270b90d684fb50b20068ab49da1f6"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.0.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "af4c57a4451c3c5c096f43982e170b0db51d9d14a60e6fea0b150928d001be0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.0.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "ba68538587690a85ac768b88f0f0cb0dc9ff10374512eab4dc7aadb2e4f91ed7"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.0.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "1a2c18b4121f607418d2af5e543df66fbf4d905a66e35dda30a903d2cd6546e0"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
