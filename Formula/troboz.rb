class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.0-40480ceb"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-40480ceb/troboz-0.1.0-40480ceb-macos-x86_64.tar.gz"
    sha256 "f3c8d96d4b412f4e0d3f349a96e7c97fe7701cc24f3d597cfe9710561b03230c"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-40480ceb/troboz-0.1.0-40480ceb-macos-arm64.tar.gz"
    sha256 "c451ab172f454d13f3a332dbb52a577e7f179b59de5f5794c7b5ac6dfe579ca5"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
