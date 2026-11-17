class Clerk < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v4.2.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "29cce996ff82dc8ef4281d71acf5a789c83f17875eb913334ab6146f653ffb79"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v4.2.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "f591f33343cf8e9a7ca10041f69f625975a24ef6e63133278d78ef817d65a607"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v4.2.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "ed2179bcd55fa96537b9d7c045b72c6a60b0da5067cf16affb12d216f9943c6f"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v4.2.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "45b01101372096bd5504ba82db16fd128ceb5a2bd06328197fad5b013931e842"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
