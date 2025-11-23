class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.0-3cedb619"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-3cedb619/troboz-0.1.0-3cedb619-macos-x86_64.tar.gz"
    sha256 "b10b57a2d867632372ec0b1a2065e8eec7c86531542660d6fddac8ffb87a550d"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-3cedb619/troboz-0.1.0-3cedb619-macos-arm64.tar.gz"
    sha256 "fc53927561d6595d79f324f11a1b0620ac7e3d54044bb74d2dbd22fa5e9df3bd"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
