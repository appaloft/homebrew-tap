class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.10/appaloft-v1.0.0-rc.10-darwin-arm64.tar.gz"
      sha256 "a29b6d53f1da782f7b69e57688ccfdf7092f0300634ed5387e489ca9e9551258"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.10/appaloft-v1.0.0-rc.10-darwin-x64.tar.gz"
      sha256 "bc99bcf6a6b50f0e3c04ec53734fb8cc4a45cfb4f89e5b8f6ac9d4651385df42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.10/appaloft-v1.0.0-rc.10-linux-arm64-gnu.tar.gz"
      sha256 "6bd8fecd4263d4c0d467b298a5ff3857be9c288adfc1c677f6cf77bf110e380b"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.10/appaloft-v1.0.0-rc.10-linux-x64-gnu.tar.gz"
      sha256 "bbd731be79cf85c1c10e17287276f129b6128402a340be64f0220e8c074add34"
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
