class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.10.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.3/appaloft-v1.10.3-darwin-arm64.tar.gz"
      sha256 "0f1d153e3a2c0ee9532980758935853621f28ba84f3943ea32f71dbf4ebfec00"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.3/appaloft-v1.10.3-darwin-x64.tar.gz"
      sha256 "9f1ac70e4d6c0074988d716f2bac5cca94a1b5be60f01e53715830332042db90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.3/appaloft-v1.10.3-linux-arm64-gnu.tar.gz"
      sha256 "d2a6967abba8f4c4d071c25cce745b5c3a8792842e51596dc0c1f3032f927515"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.3/appaloft-v1.10.3-linux-x64-gnu.tar.gz"
      sha256 "be30d1212ca78de8a58ddeba9947da4e7f0040e26ad5eb7b097b23482ace0454"
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
