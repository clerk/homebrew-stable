class Clerk < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.1.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "efcf2264266d870f23428c7b2e6dc02b44b8c816b9322a369666c84426ea22f6"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.1.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "84fe71b2598ecb98e72280cdefe9c21a659ada5376560cf4320d0f148b57a1c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.1.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "0dd9610c856f92d504cc49e86fd0a6488c0ce587e579dac1371f6accf010c133"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.1.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "6d9d33c1998420995da5f332fbc85e4e5c2c0254a33bee21ec7626fc7c39b02a"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
