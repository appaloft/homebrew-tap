class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.3/appaloft-v0.9.3-darwin-arm64.tar.gz"
      sha256 "b8be83057910525fc133546286590cb157e62699d71636af3e6e2e038ed03464"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.3/appaloft-v0.9.3-darwin-x64.tar.gz"
      sha256 "4da1f02f7aa8fac47e7ecd23984f788a4e5792238f935d8cfa7642186c200f91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.3/appaloft-v0.9.3-linux-arm64-gnu.tar.gz"
      sha256 "c309f713ded6f07ccd603feb2ade8dcdf9234c5c29e8e36057542126f553a5ff"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.3/appaloft-v0.9.3-linux-x64-gnu.tar.gz"
      sha256 "9a772e775292c57ce32cb52d420400086f0757bb08a0a28d527b6d6fbc3dbc8e"
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
