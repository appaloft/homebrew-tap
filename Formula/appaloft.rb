class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0/appaloft-v1.0.0-darwin-arm64.tar.gz"
      sha256 "d3ac0d507bb11ae6115ad03348c985367e5647ae06309bd04a3c5959a1fbdabc"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0/appaloft-v1.0.0-darwin-x64.tar.gz"
      sha256 "f442c395cb0b2554f136fc74aeadd2a33020aad476d848693961ecd3188720da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0/appaloft-v1.0.0-linux-arm64-gnu.tar.gz"
      sha256 "8aae3e597041dcb56af93a44b988bfbe083292c9c519fc57c9cfa48b5add5b4d"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0/appaloft-v1.0.0-linux-x64-gnu.tar.gz"
      sha256 "bf5d74637d46efef34660d09b0d1802e47c1576a6868bc8639d93c89633046fa"
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
