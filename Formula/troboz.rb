class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.0-9e05a057"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz/releases/download/v0.1.0-9e05a057/troboz-0.1.0-9e05a057-macos-x86_64.tar.gz"
    sha256 "c278680707f685a1f01faaab536d090a699ccb9f625ab9de86eaf61678a76570"
  else
    url "https://github.com/KreasiMaju/troboz/releases/download/v0.1.0-9e05a057/troboz-0.1.0-9e05a057-macos-arm64.tar.gz"
    sha256 "1e19453fbaaadccbc38e981cfdc2defacbcaa2650311eb67e247150195f9d489"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
