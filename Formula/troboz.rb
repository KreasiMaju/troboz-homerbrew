class Troboz < Formula
  desc "Troboz - Secure tunnel client"
  homepage "https://troboz.com"
  version "0.1.46"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.46/troboz-0.1.46-macos-arm64.tar.gz"
    sha256 "e6c4befe68363aac859634da6548bdc31084f810ab8a706e462ed4ecec82e4ec"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.46/troboz-0.1.46-macos-x86_64.tar.gz"
    sha256 "8585eb178b7fbeabc35228c0f2384a58bbf95d0872d8dadf08873433ec0da324"
  end

  def install
    bin.install "troboz"
  end

  test do
    system "#{bin}/troboz", "--version"
  end
end
