class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.8.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.16/appaloft-v1.8.16-darwin-arm64.tar.gz"
      sha256 "5c6f6062f353eade64bcbe1f2ed75420dadf26cc6d90db8e1da1354a27d68396"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.16/appaloft-v1.8.16-darwin-x64.tar.gz"
      sha256 "d81e6118438bf0d6618f8f5bb0884d138bbdb95762a8e8aed777384618bc588a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.16/appaloft-v1.8.16-linux-arm64-gnu.tar.gz"
      sha256 "e08c93ed14abd57663503fc33b0071c69345922424bcad08ce9e5557c0ce36bd"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.16/appaloft-v1.8.16-linux-x64-gnu.tar.gz"
      sha256 "7ede14d4e16bf2c41b5a54009b15a5f029aa33f8e972f2b050cc65c273aad83a"
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
