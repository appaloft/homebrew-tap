class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.7.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.4/appaloft-v1.7.4-darwin-arm64.tar.gz"
      sha256 "4c1105387ba7a9a6689629fb0a7239465be1c6405e59243ed6c2b4edfe316c21"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.4/appaloft-v1.7.4-darwin-x64.tar.gz"
      sha256 "34eba8a337096638bf47725dbd717bf73231514ec8cdc33d66a661c19ef1b8f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.4/appaloft-v1.7.4-linux-arm64-gnu.tar.gz"
      sha256 "a40a8ba91845fcc58d12e0688ec1d2a5f5943488746eeb692e775efbfd18ad27"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.4/appaloft-v1.7.4-linux-x64-gnu.tar.gz"
      sha256 "6759b5d960413af57c2cc3d2e0bbe859571b8f3f48d866bbf038b1ddf62b709e"
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
