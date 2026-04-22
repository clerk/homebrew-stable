class ClerkAT1 < Formula
  desc "Command-line interface for Clerk"
  homepage "https://clerk.com"
  version "1.0.1"
  license "MIT"
  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.0.1/homebrew-clerk-darwin-arm64.tar.gz"
      sha256 "2db7e41b45a371989510ac4006908e7a3c19c617ce682aa007cd7c4426aec350"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.0.1/homebrew-clerk-darwin-x64.tar.gz"
      sha256 "efb0ca66e4224f2ec80b3b5f85f31e63886928b830c7de05d499633696dea9c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clerk/cli/releases/download/v1.0.1/homebrew-clerk-linux-arm64.tar.gz"
      sha256 "91822427adf45c8173fb83d992af5a9911d8577ff725c5e7f7caa5cda2702b64"
    end
    on_intel do
      url "https://github.com/clerk/cli/releases/download/v1.0.1/homebrew-clerk-linux-x64.tar.gz"
      sha256 "7a45a142c92fba000765664ab23159478a09fc11af05017fef9ba583b5ad8268"
    end
  end

  def install
    bin.install "clerk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clerk --version")
  end
end
