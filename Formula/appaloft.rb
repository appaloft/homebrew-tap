class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.9.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.4/appaloft-v1.9.4-darwin-arm64.tar.gz"
      sha256 "aec2a38edd479a7461c868c0e3eb9ea20d407086da6faa7e3db2aaf3063970f4"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.4/appaloft-v1.9.4-darwin-x64.tar.gz"
      sha256 "2ec8ea6564c912f8252b66771fb51a77cdb4a0d98afc8c7ab42149e6d3d26f0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.4/appaloft-v1.9.4-linux-arm64-gnu.tar.gz"
      sha256 "bb763464354fe611b3f4dec646e37d315036caa81c18175895ed723baaeff919"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.4/appaloft-v1.9.4-linux-x64-gnu.tar.gz"
      sha256 "ac39bd9971e82f1067e32bc666285e20e63c5ae9504d10d5680c36e32185d54d"
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
