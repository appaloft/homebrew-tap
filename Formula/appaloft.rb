class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.8.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.12/appaloft-v1.8.12-darwin-arm64.tar.gz"
      sha256 "8c56d98de744831cc7a8ba281f031bfb9603a7886aa8032526e28be2032f4077"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.12/appaloft-v1.8.12-darwin-x64.tar.gz"
      sha256 "8f36bde8632f2b2d0fbcd1656c6a79b863dd9c347b0575a28be5ce45278e2190"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.12/appaloft-v1.8.12-linux-arm64-gnu.tar.gz"
      sha256 "7aa5e60565cc4a793c2389e0824cef830ee4803fe7a9302d81abc9c250854f2d"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.12/appaloft-v1.8.12-linux-x64-gnu.tar.gz"
      sha256 "4b4d03b50723de08e9afb6bca02fe08752de05d8591a4f8e430d9b0891868d76"
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
