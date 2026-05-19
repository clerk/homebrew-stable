class ClerkAT1 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "1.3.0"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.3.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "ffa2dafa0ff0779de2f3ca0679ec77e1087004f1b4d88a6e381473254d2e8993"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.3.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "6a9199180feb834508ffce772af39c53051317fceef3d091949bce2870dbe1ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.3.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "740b933b309252e318d630b2b87dff0af3d078415b9083602ad051230864d1db"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.3.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "3f3de8e3b6cac969a98f44a6635943aaf168743eaca585358bdaffc086b8487c"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
