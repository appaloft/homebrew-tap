class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.10.0/appaloft-v0.10.0-darwin-arm64.tar.gz"
      sha256 "6d02dfa96713cae30302d443270e5cac73cd39c3f47ae58b7ffa696e97a5220d"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.10.0/appaloft-v0.10.0-darwin-x64.tar.gz"
      sha256 "4ba4b9529c04ab473e52000f309e37a028446c4044b4ac63b1fa4c5425a020fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.10.0/appaloft-v0.10.0-linux-arm64-gnu.tar.gz"
      sha256 "9f4dd1847f6ae93274800a6235b94b1881dd3f4aa106c343eb929ee3389ba263"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.10.0/appaloft-v0.10.0-linux-x64-gnu.tar.gz"
      sha256 "8f0705ea7e01cbdfc2e3c17db022b975c2179fd725d3af3d1ce1337ab8bd22af"
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
