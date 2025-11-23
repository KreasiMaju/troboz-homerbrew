class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.1"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.1/troboz-0.1.1-macos-x86_64.tar.gz"
    sha256 "2830423f5818c13c9e90396a926fe362b3c09cdd3ee49caf4bc8d1928fcbe670"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.1/troboz-0.1.1-macos-arm64.tar.gz"
    sha256 "843647033d012d2a96dc58228440bb1c1402bb9128c61aa55b26fc9c13ea4870"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
