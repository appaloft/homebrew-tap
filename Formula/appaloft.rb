class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.1/appaloft-v1.9.1-darwin-arm64.tar.gz"
      sha256 "3b928dd66ae434cf466bd98efa54e04a50f2ea57a86fd5e7d83bb02d102a2e67"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.1/appaloft-v1.9.1-darwin-x64.tar.gz"
      sha256 "371a842cc1d96c9dd6c24928fd6aaf40d0fe4df5ac503f8757a904759e7319b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.1/appaloft-v1.9.1-linux-arm64-gnu.tar.gz"
      sha256 "81c9c822876a08b80db6ed60dc64bc1c586049eeb02c2206833fccb27099f52b"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.1/appaloft-v1.9.1-linux-x64-gnu.tar.gz"
      sha256 "fe0bc960994626b7b5bbf7b20825d07ddbe4e6c3fbbf13573b7cd0da87d94905"
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
