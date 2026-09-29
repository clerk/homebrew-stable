class ClerkAT3 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.4.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "905cf38370974fc8a5c0c72f6c415f82793959d575616f3cd9a003a499938bf4"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.4.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "68c53c76dc73230cb627ab33948cc407b5bf1379e2388d5ef7eef9a77ab8608c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.4.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "54740bdfb5642fa620b77087b7a73a96957c318ea8fd0833e0312df4f4db5304"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.4.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "0cf713eeb2451a64b0d22fd447eab5de930bcbefebf837b41fe36a13dcc6d819"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
