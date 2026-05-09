class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.9.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.6/appaloft-v0.9.6-darwin-arm64.tar.gz"
      sha256 "2bdf9b2a6d7a2900c9fb4e163cb44c1ee13b9160935a6e243403bff664032a7b"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.6/appaloft-v0.9.6-darwin-x64.tar.gz"
      sha256 "ddb74e3816f1087b2a6b210a25ce1fd9f00de18b0deef9b4cfabed151dd793bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.6/appaloft-v0.9.6-linux-arm64-gnu.tar.gz"
      sha256 "03d087ba6f225a2cfc0be758e9be71f7fee475f103d23658906e8dca51ae53b7"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.6/appaloft-v0.9.6-linux-x64-gnu.tar.gz"
      sha256 "34569ac354cfb09fdc8cc18424e5e879f9002a77b7810f90e20e6c346aaf0569"
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
