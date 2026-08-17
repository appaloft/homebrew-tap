class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.8.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.13/appaloft-v1.8.13-darwin-arm64.tar.gz"
      sha256 "f25e2e65c0884c08450e93b16f4be02ce774078a9cee3c7a8b2d14c440369063"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.13/appaloft-v1.8.13-darwin-x64.tar.gz"
      sha256 "c47867ba3dc0b7194bf5800d22d4d41d7c22931d98cb1304dfb806e8d4850290"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.13/appaloft-v1.8.13-linux-arm64-gnu.tar.gz"
      sha256 "641be3a4432613d9336d220ae175a040b9b6a9775663ad7b380a6fb7eec4168f"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.13/appaloft-v1.8.13-linux-x64-gnu.tar.gz"
      sha256 "e2158a4f5265f44e17a7ee5ee042a8ba6aedb06d57b24a7175283114d62baea4"
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
