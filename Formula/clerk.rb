class Clerk < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.0.3/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "1ddd4670260f5afd3ab71f6b8d9887a61072c32b8837cde74faf2ff6787a1a20"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.0.3/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "732bf7b55fbaf102e38b7e651ef821aefba61e171ab435be4b3f99cf716dd717"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.0.3/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "12a02dee60005a3aad68f8da99d26d009ce2d8c4e6d6be4f1424db712b996056"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.0.3/homebrew-clerk-linux-x64.tar.gz"
      sha256 "c6bea983ff40f453aff31042335ee0c37de5d9be6a23a552122be4cd2047030e"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
