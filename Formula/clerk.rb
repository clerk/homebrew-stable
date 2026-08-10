class Clerk < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.0.1/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "250ae45fb95f4f7047bf62ef47df0242f327b9436480439eb10a9ff4a9486315"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.0.1/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "ecaf8f1ffc719bac03420ad7bd6bcf9dcf108c3183d09b8d174471fd20b19d1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.0.1/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "2781e827ccd5e2ed706837346c51bb2f6295a537c8d4ed1ede243ad01f767fc9"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.0.1/homebrew-clerk-linux-x64.tar.gz"
      sha256 "31610c2daa8cbecc15ab18346a40fe4d8d676ffa42c6aeb6d12b816d9aa1b592"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
