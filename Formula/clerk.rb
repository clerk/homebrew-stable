class Clerk < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.5.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "f25a247495014ffcf15410f684156cbb3258f4fc6334ff710674d1ae62f1d45c"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.5.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "43e444ad1a174f1126fc18a967478f1d57b80ef328be12b50441c03775bc766a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.5.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "d0e7b780086dda7996d67da9ea0b14ab409c2584de48de817ed0d2e472fc0552"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.5.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "1ed8c900c940b7cdd4dc3aa26b14ea57c20eb7a249c29d83daeacb2fe251d251"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
