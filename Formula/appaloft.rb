class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.10.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.4/appaloft-v1.10.4-darwin-arm64.tar.gz"
      sha256 "fa377cf9e6877591a4b3853ea60fd2d02d49cc3f0e3e70b8562b9965aef17363"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.4/appaloft-v1.10.4-darwin-x64.tar.gz"
      sha256 "1ef7d407b6b993902e5d353aa272fe44860f1f09a35b27cd3b0fc34dcf9073a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.4/appaloft-v1.10.4-linux-arm64-gnu.tar.gz"
      sha256 "ec4bf634e78b3998e0c2c91a7d1d93c466abb1917ec301b51bffa968d671083a"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.4/appaloft-v1.10.4-linux-x64-gnu.tar.gz"
      sha256 "390b1469688f576e23bfea8b0554166a30d6a4fe38d3e1be7db6703c7970ae16"
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
