class Clerk < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "2.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v2.0.1/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "8a21b993b5db8a7faefad255b0cbbe8167389b3dd23626767c95d140721f084d"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v2.0.1/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "3ad548b8059a113fc3ae71fddb9004039fdec6d2f5368dbf787ab0f9aedab165"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v2.0.1/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "0b7e9566091f5e510343c24186c83fe7bed74daa0a4611df45cbc20fe55d47a7"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v2.0.1/homebrew-clerk-linux-x64.tar.gz"
      sha256 "dd498d6ce52a593557f67320782e320ce29294ebe722d9a23f300c5d07d4b26e"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
