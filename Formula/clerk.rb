class Clerk < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.4.1/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "40813cd3f3ddd33693edca29297beb0082a29f9ebef27009d07db3ca9fdc1057"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.4.1/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "3f1671f112ebcb34b6e0ee95a42a81c1dd341c95f58852400f9b05fdb521f0ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.4.1/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "1f7be8982915306be16feb732acf0911244f2704d0a644c6480837edeb3e34a4"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.4.1/homebrew-clerk-linux-x64.tar.gz"
      sha256 "de79b33de2fa60d142bfc64bf990d358e6da39ca10e81cc3edb77ba4839bb011"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
