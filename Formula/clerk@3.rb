class ClerkAT3 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.3.0/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "1bb53e48f44240432df8fe5cdb6cca6cc4d6bc2274e4799d06bdc55fcfe9cb82"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.3.0/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "f013c9702e29061fc5d9e300655a289f893dd38a9648c8675629a8fa98bc5c13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v3.3.0/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "226c00c3b62fecf109bee42886536b6a00b2208d8ec3a93712c50546b3bafd97"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v3.3.0/homebrew-clerk-linux-x64.tar.gz"
      sha256 "236b7e61a90287be91a90ffba815741e392d7a6e1e384ddd4ef2fac3ad493543"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
