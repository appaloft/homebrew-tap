class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.18/appaloft-v1.0.0-rc.18-darwin-arm64.tar.gz"
      sha256 "c60fe512b2e1eb75c04d9522397f45cd3a52d145d457e68febce586d62f0044b"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.18/appaloft-v1.0.0-rc.18-darwin-x64.tar.gz"
      sha256 "25206527e81b5df7464d61c0c5b935489d683040eb35305923e8bf24ba3f7c1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.18/appaloft-v1.0.0-rc.18-linux-arm64-gnu.tar.gz"
      sha256 "a37f29e78b2b974d0a85548e98eab954577087e1c41606554a3c4ba5791a6d57"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.18/appaloft-v1.0.0-rc.18-linux-x64-gnu.tar.gz"
      sha256 "e8ead02bb7c4df17f4fd19023ec420e74786a294f7c25c392747fc317930a970"
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
