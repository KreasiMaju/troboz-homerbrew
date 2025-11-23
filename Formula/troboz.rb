class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.4"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.4/troboz-0.1.4-macos-x86_64.tar.gz"
    sha256 "3db4d1352c53e71a71896dd5975bdd2e9f4f360f32537e94eeeb810cf7cb43e6"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.4/troboz-0.1.4-macos-arm64.tar.gz"
    sha256 "c74c20609895250426ff3f18eec4e57d13685e5c939e701a70079e1d48d9b129"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
