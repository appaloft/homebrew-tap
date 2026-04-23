class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.3.0/appaloft-v0.3.0-darwin-arm64.tar.gz"
      sha256 "22239b12c2b5c2912045d30e040896a814657603d05a37c18dc428a7fc24f2ce"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.3.0/appaloft-v0.3.0-darwin-x64.tar.gz"
      sha256 "44949c5fda7f2311fd868c9637cab6d064a4c9c82db3ab84f5c9851c86afff59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.3.0/appaloft-v0.3.0-linux-arm64-gnu.tar.gz"
      sha256 "dec754e4feb596138bd59119c46039f9b5617dd0cc050bd0d00be43f6ddcc126"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.3.0/appaloft-v0.3.0-linux-x64-gnu.tar.gz"
      sha256 "08a5c1b8982d15ebcbc5a73f7a9203ae9bd30197010a209f31d369e24691ad0e"
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
