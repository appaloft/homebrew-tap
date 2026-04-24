class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.5.0/appaloft-v0.5.0-darwin-arm64.tar.gz"
      sha256 "6577f6da9eb387c61f5e721a2ad931e0f6ecb0c10d6f18dde15303fb17776586"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.5.0/appaloft-v0.5.0-darwin-x64.tar.gz"
      sha256 "230c15c471b3596f6011ddaf92c1790a876f55cb5269c6836f014f245acb9f8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.5.0/appaloft-v0.5.0-linux-arm64-gnu.tar.gz"
      sha256 "55b41cf715171a309f4498279494026727a0ceba08b3d06e8212005e1d34ab2c"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.5.0/appaloft-v0.5.0-linux-x64-gnu.tar.gz"
      sha256 "df389de66a4ea89303174abbdc93327fe1d399991562635946eb54badd715463"
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
