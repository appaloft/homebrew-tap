class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.0/appaloft-v0.12.0-darwin-arm64.tar.gz"
      sha256 "5bd808685c45bc5d6c9553f73a4f4b9426a8a407a93e59d5a4d56e60e2c3e6d3"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.0/appaloft-v0.12.0-darwin-x64.tar.gz"
      sha256 "653e26aadc450ec68c2d85f708d372c29e20c4ce62d181b93fa74145e6f2a4f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.0/appaloft-v0.12.0-linux-arm64-gnu.tar.gz"
      sha256 "ae4be5a25be55602629160754f1836fa82b5ced77f61ce7210a76ed22ff55896"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.0/appaloft-v0.12.0-linux-x64-gnu.tar.gz"
      sha256 "10d69cd9d192679703301c9680b380f3a617a0fad593c392da9360ec49dca5bc"
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
