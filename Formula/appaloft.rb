class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.0/appaloft-v0.9.0-darwin-arm64.tar.gz"
      sha256 "72e9883c4e895e559d2c7c399f83b9883c7dee0d3bdc07a21b7ead43f561040e"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.0/appaloft-v0.9.0-darwin-x64.tar.gz"
      sha256 "ccec6d97241e799b5a76a1221164b8d110f2e7f55e8448f3fadb80c132ab06fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.0/appaloft-v0.9.0-linux-arm64-gnu.tar.gz"
      sha256 "01c798084f81d562c3a6299bbecfffc074b43b88712c878a8af82e0ce5f30937"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.0/appaloft-v0.9.0-linux-x64-gnu.tar.gz"
      sha256 "749260727b40c87b9ae21a619819f5b234cb6479ef2d37697f4d2c2eec931bd2"
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
