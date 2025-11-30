class Troboz < Formula
  desc "Troboz - Secure tunnel client"
  homepage "https://troboz.com"
  version "0.1.44"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.44/troboz-0.1.44-macos-arm64.tar.gz"
    sha256 "3c7fbbdb3bea909fc2847717ac9008fb70a437cb0b7cd79b3a7015c778ca62d2"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.44/troboz-0.1.44-macos-x86_64.tar.gz"
    sha256 "66dfaba3d136935c00883c2299e542fd8a14ac2623f5680dea2141c0abf0c61c"
  end

  def install
    bin.install "troboz"
  end

  test do
    system "#{bin}/troboz", "--version"
  end
end
