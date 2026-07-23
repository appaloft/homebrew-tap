class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.3.2/appaloft-v1.3.2-darwin-arm64.tar.gz"
      sha256 "2668ac2e5e81693ff37ec294d7926ee54b41e6cd73bed98b1f3bbc2fbe1e316e"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.3.2/appaloft-v1.3.2-darwin-x64.tar.gz"
      sha256 "83ba6d6458c2ba508723523d8ffdbe0351357521e790b818cc55ebb3b5b3f834"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.3.2/appaloft-v1.3.2-linux-arm64-gnu.tar.gz"
      sha256 "af1fe609e91819911435cbb5d216dc2f3132804345cc4c8ea1d7b347e3d46d4e"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.3.2/appaloft-v1.3.2-linux-x64-gnu.tar.gz"
      sha256 "9fd0cb70824e562d92af724027d71128ccbb48addfc4f5120566fb3bad04391f"
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
