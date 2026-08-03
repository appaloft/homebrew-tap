class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.0/appaloft-v1.7.0-darwin-arm64.tar.gz"
      sha256 "2d5cd13cfdb1cb3fc2694663efdf62f5f8098a757e7b73ca865d835f3d9323e8"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.0/appaloft-v1.7.0-darwin-x64.tar.gz"
      sha256 "6681e660913ee808bbb6e211ff2944dbf974efc25e8f0c57e4fa414f61ed1a53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.0/appaloft-v1.7.0-linux-arm64-gnu.tar.gz"
      sha256 "74dd6ce5f47795b4d4fb151e8aa7340a95372a454095241dec48a13e6cb49a83"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.0/appaloft-v1.7.0-linux-x64-gnu.tar.gz"
      sha256 "a0831a7b133d21356263720f8bb0ec1182044f711b41a252c4076a49385e984e"
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
