class Troboz < Formula
  desc "Troboz - Secure tunnel client"
  homepage "https://troboz.com"
  version "0.1.42"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.42/troboz-0.1.42-macos-arm64.tar.gz"
    sha256 "7dcbf4dfd7d0ce91fdac4cd0db4152ad6c2916ba547205370a2ed6398343deed"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.42/troboz-0.1.42-macos-x86_64.tar.gz"
    sha256 "d49f65bf6780da3845b59428c0a4a0736cbaa85736680c900d118fe9140038ec"
  end

  def install
    bin.install "troboz"
  end

  test do
    system "#{bin}/troboz", "--version"
  end
end
