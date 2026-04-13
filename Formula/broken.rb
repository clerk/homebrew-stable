class Broken < Formula
  desc "Intentionally broken formula to test CI notifications"
  homepage "https://example.com"
  url "https://example.com/nonexistent.tar.gz"
  version "0.0.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  # Missing license, bad sha256, invalid URL - should fail audit
  def install
    bin.install "broken"
  end

  # rubocop:disable all
  def some_bad_method( x,y )
    x+y
  end
end
