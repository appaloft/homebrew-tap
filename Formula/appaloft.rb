class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.1/appaloft-v0.12.1-darwin-arm64.tar.gz"
      sha256 "83e312e4e2e33d342abf4b3f213e43aa0150fac774d660ab3b3e760daa09f764"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.1/appaloft-v0.12.1-darwin-x64.tar.gz"
      sha256 "c492257ccc7c1da4daa6019054c76878cb01edb980e17f23bdb83e82a9a642c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.1/appaloft-v0.12.1-linux-arm64-gnu.tar.gz"
      sha256 "ad14b350a2083af571dcab62e27aed03f268921db4649dd4a67720b9827ed0a5"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.1/appaloft-v0.12.1-linux-x64-gnu.tar.gz"
      sha256 "eb242206b74fcbfb93537e6f2375f20329517c7f7a5f9ec42c8c9dd722193bf8"
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
