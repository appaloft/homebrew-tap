class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.4.0/appaloft-v1.4.0-darwin-arm64.tar.gz"
      sha256 "d136d40ef5ad62be0871d9290451a60d8427d75f358133ffbf15cbd73e1c2807"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.4.0/appaloft-v1.4.0-darwin-x64.tar.gz"
      sha256 "f0961b2225f01a3c588c15e652872c1989d1b071a7c1c60d7007ebb886ba4f32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.4.0/appaloft-v1.4.0-linux-arm64-gnu.tar.gz"
      sha256 "7e18775bdcaf8a2885cdff6b5af75a89407c6cc56edeff8d8361dfc9bc4475f6"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.4.0/appaloft-v1.4.0-linux-x64-gnu.tar.gz"
      sha256 "8bb6233759683b1fe4017a16ed70a7d0262c0bda56d2f1daffaad45c3e9b41c4"
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
