class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.0-32eae38b"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-32eae38b/troboz-0.1.0-32eae38b-macos-x86_64.tar.gz"
    sha256 "d5d3f336e09c1b179e09455d08bb9f8969be190325b4c6d3a4c12ca74a2ca6a5"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-32eae38b/troboz-0.1.0-32eae38b-macos-arm64.tar.gz"
    sha256 "7cd2ef275c4be237df9ff32eaf3773417b8b8dfbbb0799fe80024898b19c2ec9"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
