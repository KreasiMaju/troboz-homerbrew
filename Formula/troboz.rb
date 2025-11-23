class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.7"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.7/troboz-0.1.7-macos-x86_64.tar.gz"
    sha256 "7cf2d43e0a1ea1f254e9046b6228152250ff86cf51381b36d70df25274f8cfed"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.7/troboz-0.1.7-macos-arm64.tar.gz"
    sha256 "4325a6c1c70325605e3124af76cf8013912712b5994c48f63e8b35d20c3995d9"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
