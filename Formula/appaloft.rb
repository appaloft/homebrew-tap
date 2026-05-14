class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.12.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.4/appaloft-v0.12.4-darwin-arm64.tar.gz"
      sha256 "517ee68f880ea15b4fd030b82432d6014d63b6d0bf731289ef6db028961e1f69"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.4/appaloft-v0.12.4-darwin-x64.tar.gz"
      sha256 "f67e4b1ea5935f0ebfeeb47464a98d362e0f54627d8d7f4830c8e7403c8db638"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.4/appaloft-v0.12.4-linux-arm64-gnu.tar.gz"
      sha256 "d6bf195ea8415600a3a0257cfd80dcadaee82709f72a0d9a8530e9c59400211b"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.4/appaloft-v0.12.4-linux-x64-gnu.tar.gz"
      sha256 "5efa8d99ce2fa1aa5fddb3c26d14386d6de14e78bfdabbe629f854307890de9c"
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
