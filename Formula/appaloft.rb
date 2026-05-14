class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.12.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.2/appaloft-v0.12.2-darwin-arm64.tar.gz"
      sha256 "55a44677f44df580a7bfbf6a59b12a701ba93f8c383978ca6bdd2b1180b0f0f8"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.2/appaloft-v0.12.2-darwin-x64.tar.gz"
      sha256 "11e95f44939b3c68dc1588829797044c31ea83e5d13c3aa732da8eaf8e1cdc7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.2/appaloft-v0.12.2-linux-arm64-gnu.tar.gz"
      sha256 "6ba04d9c9a444d2d9a453945347a46afb634dbd8626320463761b04fc8825983"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.2/appaloft-v0.12.2-linux-x64-gnu.tar.gz"
      sha256 "a861471b259ee7b8c5eb312494bb9113d9417b04b208746adb910a174f190d41"
    end
  end

  def install
    binary = Dir["appaloft-v#{version}-*/appaloft"].first || "appaloft"
    bin.install binary => "appaloft"
  end

  test do
    system "#{bin}/appaloft", "doctor"
  end
end
