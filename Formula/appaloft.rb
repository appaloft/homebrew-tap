class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.10.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.2/appaloft-v1.10.2-darwin-arm64.tar.gz"
      sha256 "296aaafd41442ba89cde88f82b15d239d5573cff89cf3c30364f9d128760da8e"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.2/appaloft-v1.10.2-darwin-x64.tar.gz"
      sha256 "d0a5c553d00d9687ddfc443744010d0810895e0ecb0a8955771b4166c051d819"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.2/appaloft-v1.10.2-linux-arm64-gnu.tar.gz"
      sha256 "0e86e13a50f2ff4f26f224a73b93849892cb91085635773bc6c0ba8c9be872be"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.2/appaloft-v1.10.2-linux-x64-gnu.tar.gz"
      sha256 "c7ed00becf04f05371991166b6ea5830a000ea12dc7c42c861b190760951a41b"
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
