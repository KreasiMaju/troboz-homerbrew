class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.0-7c6699d0"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-7c6699d0/troboz-0.1.0-7c6699d0-macos-x86_64.tar.gz"
    sha256 "184636f82b4ceee104947976c92f33abc6d4ff8f6abdc01f0eb4349a687e2449"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-7c6699d0/troboz-0.1.0-7c6699d0-macos-arm64.tar.gz"
    sha256 "6c993312dec5097da62747fa790625d74f7f210f772befd700e1fdc8e2ab6bec"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
