class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.9.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.6/appaloft-v1.9.6-darwin-arm64.tar.gz"
      sha256 "13b6b5c157799b03925ecfdc41abccbc3db6678f35be6aab22c8cb8088161bc8"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.6/appaloft-v1.9.6-darwin-x64.tar.gz"
      sha256 "73abd8158e47a89d001bdfde4a52692e902726899aed4f13baf720d07c97d093"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.6/appaloft-v1.9.6-linux-arm64-gnu.tar.gz"
      sha256 "ec02816c34c627f64429e19e955bea242bb26e035ec1228cca9b6d88fb98c4a5"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.6/appaloft-v1.9.6-linux-x64-gnu.tar.gz"
      sha256 "b9e26bc4f324d9a8ee9b7f43ef4e1f6f1d698196ce7d654fb4cc22c68da424fe"
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
