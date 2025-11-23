class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.5"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.5/troboz-0.1.5-macos-x86_64.tar.gz"
    sha256 "3fa3a64d5fe1ec1f360fadbbc74eca5f29e979939f91b33fcdd19835cfecf0af"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.5/troboz-0.1.5-macos-arm64.tar.gz"
    sha256 "a3c5c7a5bb01aa7e0da372c75039d7155190196b6e84762cefda8af43e60082a"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
