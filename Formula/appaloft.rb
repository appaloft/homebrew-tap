class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.1.0/appaloft-v1.1.0-darwin-arm64.tar.gz"
      sha256 "0e25257ad7cb8a5dfe66822e80fbf29a3f35338816ffd2c4c5ddcc3b2f582297"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.1.0/appaloft-v1.1.0-darwin-x64.tar.gz"
      sha256 "eb9a4960ae058004d5da6911eadb0620c5bb656a2bf5975ce7ed61928bc3d337"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.1.0/appaloft-v1.1.0-linux-arm64-gnu.tar.gz"
      sha256 "6b2503fd498cecc363090c9e4f5e58f7669ccc7a887b34e0ac7e3a3f8b20e2e2"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.1.0/appaloft-v1.1.0-linux-x64-gnu.tar.gz"
      sha256 "b1ca9c5412953cd307ca383316f96690be53726c552ff8e51b0545bed2852556"
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
