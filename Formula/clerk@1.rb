class ClerkAT1 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "1.1.1"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.1.1/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "5a549f75590a484cd8f5cb940bcd154c3feceaa76dc9ffb4586e65e3d107a82b"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.1.1/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "e6777f6606a3469cb8af86dfedac6e96c375f5d4f0ac172713dfeb7992c984a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.1.1/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "f961c44630c89a8e33e12171b6640a4afc1ea3f020464bbda381567c0ef4bde4"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.1.1/homebrew-clerk-linux-x64.tar.gz"
      sha256 "ddc4974b515db7e0d95f094729f9696e8da97bdde4315d302980689f7589de53"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
