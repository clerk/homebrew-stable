class Clerk < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.0.2/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "fa89290a2dc20e3f9e2393d12da103f6008798250852d01182bf3fa9f64016c2"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.0.2/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "77fd8c18694dfefb3ad98ecb905633555e16943bd2b48279638c3f46d9edbc46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.0.2/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "8086384ce267818420ef72c4c2a6d6b0a84358e67e390b58ca7840d7dd733ce7"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.0.2/homebrew-clerk-linux-x64.tar.gz"
      sha256 "38e8c1fe4a8393b87edb7bb8fd68e66a4c22e320d573e829d6c1b4fd52497b3d"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
