class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.8/appaloft-v1.0.0-rc.8-darwin-arm64.tar.gz"
      sha256 "a64b7b1a3d720f50fceba67308b27f57ccc28100763008b5760986c73863cbfb"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.8/appaloft-v1.0.0-rc.8-darwin-x64.tar.gz"
      sha256 "72e2b1941ec379cc82f38b769f082a7ed8b65c4da7653e0438b07cac9aed110c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.8/appaloft-v1.0.0-rc.8-linux-arm64-gnu.tar.gz"
      sha256 "08ccfaee6bea4fad25cba2c78adba1f94d69ef4083facda40058f5d26c0370a5"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.8/appaloft-v1.0.0-rc.8-linux-x64-gnu.tar.gz"
      sha256 "e0b547c64ce681f05c7438d0ef72f87db59fae8e57d151d49fc4989da7b763be"
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
