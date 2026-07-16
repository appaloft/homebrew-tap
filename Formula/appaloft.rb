class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.4/appaloft-v1.0.4-darwin-arm64.tar.gz"
      sha256 "65ad048daaf1fb019bf4dd1e1aadade4d2b2c7f220e57970008760efa525725d"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.4/appaloft-v1.0.4-darwin-x64.tar.gz"
      sha256 "0a618e1fde8058bfee99134631e5a7889464ded9317a8fcff651d5853c35b0c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.4/appaloft-v1.0.4-linux-arm64-gnu.tar.gz"
      sha256 "5a991d25c4933b52e95e45c7eaeeb42906e29e68fc50dec7386e3c7a76172ec3"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.4/appaloft-v1.0.4-linux-x64-gnu.tar.gz"
      sha256 "61df4a3b01de99cea69a750dc0922e9e388f4f7a7176edf9fca1502af5f2b4e6"
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
