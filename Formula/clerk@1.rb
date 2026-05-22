class ClerkAT1 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "1.4.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.4.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "7785c36c5b939d6d691cf17b8a7212305c9b5d5be857a224a6eeb95f7a5fc05e"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.4.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "e04d6a26682bf5a0ca8c1066abdcd30e87e290a9a9c393f3ecd39bbf1822c483"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.4.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "3cbc8e833991b8f0e98bc5a79fcbc4b64ac94409cfe108e2885ce483ff5f045e"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.4.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "8646da242914b9a995121a6977d856dedc3fd25defc41f815d1918576489c15e"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
