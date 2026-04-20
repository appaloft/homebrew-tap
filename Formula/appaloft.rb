class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.3/appaloft-v0.2.3-darwin-arm64.tar.gz"
      sha256 "375174ec586dd0a8cfe14ca2410da18710426f6f87acd673f87fe32aec767a61"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.3/appaloft-v0.2.3-darwin-x64.tar.gz"
      sha256 "26d5806c2e231bbd14093f81355cd1498a59290e1a8b5495bc140679db51b4ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.3/appaloft-v0.2.3-linux-arm64-gnu.tar.gz"
      sha256 "6a0911a37cc458d8c0cafd7cd3f3a176319559d495d1526785bd39e6d8580468"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.3/appaloft-v0.2.3-linux-x64-gnu.tar.gz"
      sha256 "789c5e33d64443cb35513a0202c95b20be3f8d011472f728fc2ba19acbd300e8"
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
