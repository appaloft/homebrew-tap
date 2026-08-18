class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.8.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.14/appaloft-v1.8.14-darwin-arm64.tar.gz"
      sha256 "1efc751aeea1d1143d97144668eabd9d18ddf2b4898c2762c44c4aad6417f267"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.14/appaloft-v1.8.14-darwin-x64.tar.gz"
      sha256 "9515fc4b0b872ffd11acc486068a0a21ba0cc75767d6a405ed89c2c246fc47c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.14/appaloft-v1.8.14-linux-arm64-gnu.tar.gz"
      sha256 "22ee3d3a87831a63bfb9ea030784aa11a2a5fbd17ed615449255cc1de16a12ac"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.14/appaloft-v1.8.14-linux-x64-gnu.tar.gz"
      sha256 "a86e6e39da8b0162c6f5aee980c698a4b466769b7afb159a64cd2602575b8b51"
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
