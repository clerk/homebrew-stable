class ClerkAT3 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.2.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "93f21c07473c94c98d3999762dda65ab15ea1c7a04d2f93b4328f2a88c1e4a60"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.2.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "b1359828d76f9d378c26cd8c1964c308c2a63fd53399f77d87ff69f507558e30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.2.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "0efa5798e2528a380ecfe84ba1b3fb960a4acba1affd9817cc790d6e6f2f8ec8"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.2.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "e68bdf22e66d91f7e68c9c2f161c62b645b1b5f61e126f3225bd4b773855d48a"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
