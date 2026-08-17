class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.8.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.7/appaloft-v1.8.7-darwin-arm64.tar.gz"
      sha256 "952bc3a1b9b9c883943e3ac047f6bfa9c2ad2885067a24ac2403fccec76552e5"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.7/appaloft-v1.8.7-darwin-x64.tar.gz"
      sha256 "9c5737d0ce675d7835c5a86f3fa85c0d5f084543ef74fedd13917d0b8327c7fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.7/appaloft-v1.8.7-linux-arm64-gnu.tar.gz"
      sha256 "f18ca9373c9081e8d2b5d1866e79bd91c730c0fef40da3a0cfd40a8e047494c7"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.7/appaloft-v1.8.7-linux-x64-gnu.tar.gz"
      sha256 "c7d3e2bca2f568cf8ef947a3194f1079d91bac66ffb8a049fd67a4946fd9e7f6"
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
