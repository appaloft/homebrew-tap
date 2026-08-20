class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.9.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.2/appaloft-v1.9.2-darwin-arm64.tar.gz"
      sha256 "1f16be1fd42cb2131737580614d73d199c2197f955cf6bfa1a156e767ae70a91"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.2/appaloft-v1.9.2-darwin-x64.tar.gz"
      sha256 "6b64e87b60c0ac1d4461533841befd8b876d4ff31ba538f43c1d44f987ce3df9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.2/appaloft-v1.9.2-linux-arm64-gnu.tar.gz"
      sha256 "75e5786554225eabdb12b70b7f68fe477fd2809311bf13822b8a8cdfbbc2a15a"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.2/appaloft-v1.9.2-linux-x64-gnu.tar.gz"
      sha256 "21855014af63d7ba8f5ece4b06bc72cfb74ca94bb5d9083780eae66829088bd2"
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
