class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.1/appaloft-v0.9.1-darwin-arm64.tar.gz"
      sha256 "a240c3e05bd4b03cb3af336d57b47f164aea5871492aedb7d889865cc7e154d5"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.1/appaloft-v0.9.1-darwin-x64.tar.gz"
      sha256 "58dd5b28d7be801b8e4b9250e44620e00b4be3a660220aba415dc5c189ff5fd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.1/appaloft-v0.9.1-linux-arm64-gnu.tar.gz"
      sha256 "65adab5de3fdc15ec8ee0ef6b30a42bb05857e67fc2cb59d29b297f4fc79bb86"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.1/appaloft-v0.9.1-linux-x64-gnu.tar.gz"
      sha256 "f70cd0d27707a40c79c335c305beab91164d8748af3fa9c771b506cbc9748f77"
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
