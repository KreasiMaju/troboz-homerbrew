class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.0-e3d1330b"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-e3d1330b/troboz-0.1.0-e3d1330b-macos-x86_64.tar.gz"
    sha256 "be6967382e68d268183120aaedefaf04a06868c41ebe107e900e7deece293f8d"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-e3d1330b/troboz-0.1.0-e3d1330b-macos-arm64.tar.gz"
    sha256 "77dde5b01102c51b677050bd661ecacef79b66932f4e888c28ad81856a2337c7"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
