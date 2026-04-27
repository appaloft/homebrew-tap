class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.6.0/appaloft-v0.6.0-darwin-arm64.tar.gz"
      sha256 "d66d493e34ba936b22cf05564d0d66cc22f0d940f51e8564495a9207c19935dd"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.6.0/appaloft-v0.6.0-darwin-x64.tar.gz"
      sha256 "4a9267dcc4c4ff9dff6d3135d7e3ed7e162cd0c772ee524ef248b0aced0b0928"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.6.0/appaloft-v0.6.0-linux-arm64-gnu.tar.gz"
      sha256 "63a639b79334a4bba9d9d931093bb7c70d38ec50dcc92443085c894607a8447c"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.6.0/appaloft-v0.6.0-linux-x64-gnu.tar.gz"
      sha256 "362c42b1451dce2c75711829103c1229e28ec1de22cf52e252830af0fbc2b5be"
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
