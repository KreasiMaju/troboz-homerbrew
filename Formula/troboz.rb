class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.0-0f109f94"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-0f109f94/troboz-0.1.0-0f109f94-macos-x86_64.tar.gz"
    sha256 "dcf6701ec1eee8fc2b93ce16cdf5aada0c73bd35a53b64fd34390a1147ac0e65"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-0f109f94/troboz-0.1.0-0f109f94-macos-arm64.tar.gz"
    sha256 "16e2d5b7598cf48ec084eeb31bab2a9401b42bba6e17861680f2cf3df3492b37"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
