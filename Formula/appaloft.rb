class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.1/appaloft-v1.8.1-darwin-arm64.tar.gz"
      sha256 "ea7364f991bb8047d04ada0886c9778171d91a1e725b60c83c53bdbc2e82e936"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.1/appaloft-v1.8.1-darwin-x64.tar.gz"
      sha256 "1892c6aef8c38b09815af1bda9cec05eb5bd3dbdcd3bf8ee29b44e5cd2923aad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.1/appaloft-v1.8.1-linux-arm64-gnu.tar.gz"
      sha256 "1247c36cc2fc22960fd9db936409fa98e7dde4a67299a340bb2bf7678f60134d"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.1/appaloft-v1.8.1-linux-x64-gnu.tar.gz"
      sha256 "e824e3bd0a097b036567eb4fa8b23c25bce82503d403ca0e19f4cc4786f234ff"
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
