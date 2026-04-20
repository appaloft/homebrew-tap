class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.2/appaloft-v0.2.2-darwin-arm64.tar.gz"
      sha256 "78a33265eb97fa3e22d5a931cfb3637435f9fb19d66ee9f27657522814fcee39"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.2/appaloft-v0.2.2-darwin-x64.tar.gz"
      sha256 "51fcf8101607cafbdf1386f74e20a2a05fbd6c518daf54d8f79de9aa5fdb603d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.2/appaloft-v0.2.2-linux-arm64-gnu.tar.gz"
      sha256 "d0ae84a9a3dab738a1de21172f8a1d3a162fdd347ea0c2dd49d30a35542228e5"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.2/appaloft-v0.2.2-linux-x64-gnu.tar.gz"
      sha256 "62e55f66d88a20e3cd3385253b307b7398d301e7fbc9c51eb0098a3567d2927c"
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
