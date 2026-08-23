class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.10.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.6/appaloft-v1.10.6-darwin-arm64.tar.gz"
      sha256 "4acf328d4520e5951bb3c46c1a9e5b64bd56497ab1178a2785605dc3a41bb8c7"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.6/appaloft-v1.10.6-darwin-x64.tar.gz"
      sha256 "067d699508cd145630b43dbf308513bbb39b9cf7ed1e1aaeb371ea5b0fe05d30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.6/appaloft-v1.10.6-linux-arm64-gnu.tar.gz"
      sha256 "f1c5c00b55b9ab35c39dcd1013ce06f16cf4c15b7c73903be284528885d45ed0"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.6/appaloft-v1.10.6-linux-x64-gnu.tar.gz"
      sha256 "9ddb48e24c3b239a09d5e751db0a8c56ccce9c4e00e1af0b3e6fb9e9221be232"
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
