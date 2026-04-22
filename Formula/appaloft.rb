class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.2.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.11/appaloft-v0.2.11-darwin-arm64.tar.gz"
      sha256 "cf80712fbcfa15cb6bd349eeac2b43f6faeee7e2362fa744e0e0f9966b0da809"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.11/appaloft-v0.2.11-darwin-x64.tar.gz"
      sha256 "35abe5dc96ebca097e1843cde5aef8c7e62f7d0939b7ba7440546594f46d9c1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.11/appaloft-v0.2.11-linux-arm64-gnu.tar.gz"
      sha256 "bfbda59b7aad07ccc17d711302d1c8dc9c28efc0dbf603c94c3514f3f02ccc87"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.11/appaloft-v0.2.11-linux-x64-gnu.tar.gz"
      sha256 "6a47395a1c4443b090b3864a057e69036bf68deee6d9130a2e98b1fef1e50481"
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
