class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.3/appaloft-v1.9.3-darwin-arm64.tar.gz"
      sha256 "0a04bfddfbce91fe4080dd11be0da875695baa190d7d407e0c341b29524d6192"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.3/appaloft-v1.9.3-darwin-x64.tar.gz"
      sha256 "ae4b2b46d1dcf0276fe7b4c7e1697c13cd3cc8a83c87100611f491e47be72c4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.3/appaloft-v1.9.3-linux-arm64-gnu.tar.gz"
      sha256 "010e120037aae3db5bf30ac3fb2d4491a123ca99255bc4b7c5b3be1ef286762a"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.3/appaloft-v1.9.3-linux-x64-gnu.tar.gz"
      sha256 "933ac7d8b168502a0b83cb135c1d50536d0d48a5f458fb629d673b04d393aa36"
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
