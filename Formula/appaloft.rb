class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.1/appaloft-v0.2.1-darwin-arm64.tar.gz"
      sha256 "92ec56772460d70af4cb76cafcae689e905878ee26e4aeda91f15947876f6b2f"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.1/appaloft-v0.2.1-darwin-x64.tar.gz"
      sha256 "1d680572e580aded98fe050884a7922f2b5efd2050a9d97d3960b8a852f7fa3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.1/appaloft-v0.2.1-linux-arm64-gnu.tar.gz"
      sha256 "76643ab0512b48a298d687795d2f807a1a9550a933159de957c959a71894d81b"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.1/appaloft-v0.2.1-linux-x64-gnu.tar.gz"
      sha256 "2a1c2cc1abbf78fe467de840fd29e46e01524036b5348092d78781734ff4e073"
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
