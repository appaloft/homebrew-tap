class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.2/appaloft-v1.0.0-rc.2-darwin-arm64.tar.gz"
      sha256 "f8ae0127c3ef9531dfa0c6346f0628841cbcec2141df03bae585509289233dd2"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.2/appaloft-v1.0.0-rc.2-darwin-x64.tar.gz"
      sha256 "6785b11bff9c63763d7f452edc99acafc5371d901d9494132ed5a57dcec875a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.2/appaloft-v1.0.0-rc.2-linux-arm64-gnu.tar.gz"
      sha256 "e903de52dbd414022499a35b5544ce005b099c151c693a259cc7a80cb8d3dcbc"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.2/appaloft-v1.0.0-rc.2-linux-x64-gnu.tar.gz"
      sha256 "b5e4e8da9339637a8b3ef7673e2bf82f6218ce0680c1d98931055430d6fd1388"
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
