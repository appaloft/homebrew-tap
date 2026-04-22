class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.2.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.12/appaloft-v0.2.12-darwin-arm64.tar.gz"
      sha256 "19337f8198ee52d442bd05d5bba966f1297be227f4965d8a5a6bde04b2627e08"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.12/appaloft-v0.2.12-darwin-x64.tar.gz"
      sha256 "e0bb328d3ceb9c504028071b4f8e45c4e67b30a294e99ccd9c997beafc866b54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.12/appaloft-v0.2.12-linux-arm64-gnu.tar.gz"
      sha256 "8fa9300bb40135c3c11890dd4d5a3c466435cd2cdea8f8879516af59b2b06850"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.12/appaloft-v0.2.12-linux-x64-gnu.tar.gz"
      sha256 "3441398134e31f3554acc378902f3c57d99447c914784602b4debfb0d1205800"
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
