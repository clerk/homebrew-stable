class Clerk < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.1.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "ec055c0bac97bf78e16f62723e1e634efe02ee8d87b551db63391b54133d3acc"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.1.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "0ae28dcb9490576c38ea46ac41653a1f2482ffb630b06be4c0f7fd29b5bf8513"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.1.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "31caa18cab4cdef88e23510600a4f2975d2c895945ea39ea5301a8febe87fa54"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.1.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "62db0b901039cb52f77db38230b0da61637fec18d52706c06f6766aa787c4d4f"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
