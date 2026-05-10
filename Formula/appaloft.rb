class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.9.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.9/appaloft-v0.9.9-darwin-arm64.tar.gz"
      sha256 "dbfb5d047c50306933b8cc1563cca4acde2bbcdc8f5a4e874d54ef3aa705f5bc"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.9/appaloft-v0.9.9-darwin-x64.tar.gz"
      sha256 "8f9d05f1362592b7cec1351c5c1463b806bbe55090fb2eea2cf81e7d1b11943f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.9/appaloft-v0.9.9-linux-arm64-gnu.tar.gz"
      sha256 "18932bd3b8ab465b32068263c6d4eb0ebda0b0bb86e6a2af0a19a767bfafe303"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.9/appaloft-v0.9.9-linux-x64-gnu.tar.gz"
      sha256 "a9bd8fc88727fc1b810b73f8e54d03b59640fb21f20228d5fb162bf215c3f2ed"
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
