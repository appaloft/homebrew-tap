class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc/appaloft-v1.0.0-rc-darwin-arm64.tar.gz"
      sha256 "b34f829dd03438d03e806a9b7428c337fa00b03b43e9a12499e62bc8882bf118"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc/appaloft-v1.0.0-rc-darwin-x64.tar.gz"
      sha256 "7fcb036afb76abc1e29314d69058c75febebec314a94250df969811fefcb2ac1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc/appaloft-v1.0.0-rc-linux-arm64-gnu.tar.gz"
      sha256 "be215ceaf1c7003895c8249050ac61492c7b8e88c6351368367c80cea8c6a145"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc/appaloft-v1.0.0-rc-linux-x64-gnu.tar.gz"
      sha256 "de8542486de79a33c6cb4a33550062c7d6c98c64fcfa3428bb72ffac378cd4e7"
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
