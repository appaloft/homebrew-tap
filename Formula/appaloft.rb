class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.1.0/appaloft-v0.1.0-darwin-arm64.tar.gz"
      sha256 "f7577cbaa8b7babca33979593e0215108f6567ac0f211d1701f853a98bcbb6d3"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.1.0/appaloft-v0.1.0-darwin-x64.tar.gz"
      sha256 "8a2c9e72662b7fa9e865d29e1835b621c1f6410d92284d6e60b681492fa0ab50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.1.0/appaloft-v0.1.0-linux-arm64-gnu.tar.gz"
      sha256 "e0a5bbb2e7d18078b5369dd7a02c6237a0d1f9dcc7f04337fe617554f50d611a"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.1.0/appaloft-v0.1.0-linux-x64-gnu.tar.gz"
      sha256 "73de158beb0a83b053aefcb77aae28853a9d5f88af69f55dd582bb25f5b4211c"
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
