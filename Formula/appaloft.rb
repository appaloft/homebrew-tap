class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.3.1/appaloft-v1.3.1-darwin-arm64.tar.gz"
      sha256 "7c67b2ff764d9df9396effb989d6ba28b3f1c4c59d2860570a6a10c59eb0686e"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.3.1/appaloft-v1.3.1-darwin-x64.tar.gz"
      sha256 "babbb56fa7c7c6738de218733e4e28bcc7a5ab883dbcff5eff5f29786aa109cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.3.1/appaloft-v1.3.1-linux-arm64-gnu.tar.gz"
      sha256 "4e0d3b1c0cd5b327704a58973b60425b458aff6b2d1ecf7f7956c77e6c8bba15"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.3.1/appaloft-v1.3.1-linux-x64-gnu.tar.gz"
      sha256 "8ad7e238ce0ab68a9e5edd33fb408c678b2d067ea0b9920c216a0e02820295b9"
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
