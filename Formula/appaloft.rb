class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.2.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.10/appaloft-v0.2.10-darwin-arm64.tar.gz"
      sha256 "5c0f5def11e1f85d7b1ad67f57357d76eeea3257b589fb0154f7b0bd02843568"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.10/appaloft-v0.2.10-darwin-x64.tar.gz"
      sha256 "69b2e66dee0bd6096f603d5fe9aedf4338d558d10ecf580c99d878ca2892053e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.10/appaloft-v0.2.10-linux-arm64-gnu.tar.gz"
      sha256 "f582daa58272c3be08c834febb5702d4f51353d4bf71c3c9f12f5e5d0189d932"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.10/appaloft-v0.2.10-linux-x64-gnu.tar.gz"
      sha256 "0770cd08c6da5f70aba2a17dfef22b4bb7033ae33a6b93e4e53ddea0681ed070"
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
