class ClerkAT2 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "2.0.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v2.0.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "7e197e1035c964cb7d3fb82926881068d467a9c32f082123d0cc7089a161c401"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v2.0.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "e117f26d1918917451d076974b8740d6cf8239a86fb1ad03919eb0814e685931"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v2.0.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "ffddbba1227cdf9e9ed8dc4bbef06c3d13cefd0e195bb3cca84f92f6d1883554"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v2.0.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "8fb401decbeb5313767875632514b1f7386fa3104ebf0a8d5a1753c05fd3c53a"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
