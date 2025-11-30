class Troboz < Formula
  desc "Troboz - Secure tunnel client"
  homepage "https://troboz.com"
  version "0.1.43"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.43/troboz-0.1.43-macos-arm64.tar.gz"
    sha256 "5fdc0fd8965b9ad0b24f1f14ed99a7fb8593c084a876178bf693ee225c72b7cd"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.43/troboz-0.1.43-macos-x86_64.tar.gz"
    sha256 "1027d8be043b68f7fe5039385cab9633ed9432a9f93d472c065c98b76893ef84"
  end

  def install
    bin.install "troboz"
  end

  test do
    system "#{bin}/troboz", "--version"
  end
end
