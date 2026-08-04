class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.7.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.3/appaloft-v1.7.3-darwin-arm64.tar.gz"
      sha256 "d701b9c54b1f813e4d618f7cad7a48c49bf1b7655ffac45bbfa12ff0ad21a5a4"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.3/appaloft-v1.7.3-darwin-x64.tar.gz"
      sha256 "115a40446860d83a28c364254a0efba962c8efaad23fe397faf9f45b5cc9485d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.3/appaloft-v1.7.3-linux-arm64-gnu.tar.gz"
      sha256 "b04cb6920525bc87a70c7326b2ac56ac21609fc754b8dd13f8bf98085bc3f902"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.3/appaloft-v1.7.3-linux-x64-gnu.tar.gz"
      sha256 "ad3d57fac74b491d38a76a11b0046290d1334bc2f81ada4f5edecca2816a4db9"
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
