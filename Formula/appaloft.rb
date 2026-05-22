class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.13/appaloft-v1.0.0-rc.13-darwin-arm64.tar.gz"
      sha256 "5f80027b536525fe52c87c4bc2b9d2490bbe01b1fa5f895eab36fc664b154e0b"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.13/appaloft-v1.0.0-rc.13-darwin-x64.tar.gz"
      sha256 "ca7f3227d25d3832b277d9a264c1db099e93e84f39bd9187c95e23c80e2229bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.13/appaloft-v1.0.0-rc.13-linux-arm64-gnu.tar.gz"
      sha256 "c8fa3f1e071b7a7cb91d31d3a2ed0617f0120782aa371327da9e6ba7da25b603"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.13/appaloft-v1.0.0-rc.13-linux-x64-gnu.tar.gz"
      sha256 "07b317a0a38ba57ed61f6713c9e8add26461645bb2904cd89ecfcefc8b52b55f"
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
