class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.8.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.6/appaloft-v1.8.6-darwin-arm64.tar.gz"
      sha256 "ee883e076e5e65e81bd1fb9113eb32d5e15fa7335796ce5383824014d8d1a185"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.6/appaloft-v1.8.6-darwin-x64.tar.gz"
      sha256 "f26a229b807a403337fa6ff4178121e06bc2b3c246bb28c82727e3043b6bba01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.6/appaloft-v1.8.6-linux-arm64-gnu.tar.gz"
      sha256 "bf6af99aaf15a45e047be887a2dfa71a3a241cf3baf93bbc24ad4849db3f21d1"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.6/appaloft-v1.8.6-linux-x64-gnu.tar.gz"
      sha256 "9ab987e2ec14bac30cb6569d28a038116d48607c8612623956d0d86840e31a22"
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
