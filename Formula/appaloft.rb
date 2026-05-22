class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.14/appaloft-v1.0.0-rc.14-darwin-arm64.tar.gz"
      sha256 "8c7428a34d3df50f32d3fe57da6e115fe9df837f70a27f5f04eb6a17d785d9ba"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.14/appaloft-v1.0.0-rc.14-darwin-x64.tar.gz"
      sha256 "353b1a1d262f18c08ab84df6bec81ca3082cae0b016b47384b31e5a720d263ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.14/appaloft-v1.0.0-rc.14-linux-arm64-gnu.tar.gz"
      sha256 "de47528c0ea05a17a65ff5eb37d47b20058ecf98a4271cb7fcccefa66906b424"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.14/appaloft-v1.0.0-rc.14-linux-x64-gnu.tar.gz"
      sha256 "3c3beed6198ee4163d47c13cbe781ec912dc2819b96d2ba5b6a01a5e6bf3befd"
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
