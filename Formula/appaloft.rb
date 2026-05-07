class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.9.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.2/appaloft-v0.9.2-darwin-arm64.tar.gz"
      sha256 "6c31a58976a4c4906b2588eb18eec309bb55150f741d13b003cbcfd45ad369f1"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.2/appaloft-v0.9.2-darwin-x64.tar.gz"
      sha256 "187bedef6c2b7470c577500362c1afb93244e11d4584d715bfa1a24172cfffa2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.2/appaloft-v0.9.2-linux-arm64-gnu.tar.gz"
      sha256 "acdcd320c655bf498d350f4066b7afeb300330460564564b390eca8fe5f2e841"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.2/appaloft-v0.9.2-linux-x64-gnu.tar.gz"
      sha256 "ea02d47a4530e210f249a0e79647d09cf6435f2d773c20000c33122cf1fb415c"
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
