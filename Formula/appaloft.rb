class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.0/appaloft-v0.12.0-darwin-arm64.tar.gz"
      sha256 "6d993e121f83302c7bc91cb2ccf8a9f08f9cc4d0f1fd456c9b6536963d5a25f0"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.0/appaloft-v0.12.0-darwin-x64.tar.gz"
      sha256 "29ba31d3d0b4812788d3e3fad62e87362d2f038a4e82f7697276de75d6c85d5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.0/appaloft-v0.12.0-linux-arm64-gnu.tar.gz"
      sha256 "2b87ac542fccfa317f4b64356f437f5ec50b81969ae727d870d17eac988ad2cb"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.0/appaloft-v0.12.0-linux-x64-gnu.tar.gz"
      sha256 "8dfc2ee21f20d466e68f249ed5ae53a9446d23de03385b6ea7f8c5a40f190f02"
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
