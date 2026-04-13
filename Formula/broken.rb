class Broken < Formula
  desc "Intentionally broken formula to test CI notifications"
  homepage "https://example.com"
  url "https://example.com/nonexistent.tar.gz"
  version "0.0.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  def install
    bin.install "broken"
  end

  this is not valid ruby at all !!!
end
