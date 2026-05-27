class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.15/appaloft-v1.0.0-rc.15-darwin-arm64.tar.gz"
      sha256 "1a2ba8c275b2f9261a9c73eccccbf25a2d91805d2e957e8b1c3f58b04bcf7253"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.15/appaloft-v1.0.0-rc.15-darwin-x64.tar.gz"
      sha256 "8874d40038a8afe4d810c491c868efe4d940fe7856ba5956d372671a4cce5fc5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.15/appaloft-v1.0.0-rc.15-linux-arm64-gnu.tar.gz"
      sha256 "c0224cc468bdfc9b1077e98ea6d541ca70b203598417353ba551cd97ff864b65"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.15/appaloft-v1.0.0-rc.15-linux-x64-gnu.tar.gz"
      sha256 "4b14d14cb3bf80cd412fe1ccca0db85e8f297e5830fb38d14129d4edd4c80505"
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
