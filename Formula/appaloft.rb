class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.7/appaloft-v0.2.7-darwin-arm64.tar.gz"
      sha256 "8cce05ba0a69822366789ae2696b35b7f87260a22c1a2e2a404a41ff46853b1c"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.7/appaloft-v0.2.7-darwin-x64.tar.gz"
      sha256 "1b00cf699563c6621c5f757cf1baee92ef515c025f70d2724bded9fc9f933e40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.7/appaloft-v0.2.7-linux-arm64-gnu.tar.gz"
      sha256 "3862de1022f6441bb43a9625bfb5949e7197789dd894a3f2e151456b069b9e5d"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.7/appaloft-v0.2.7-linux-x64-gnu.tar.gz"
      sha256 "a180ad585396adae54780fd8693ec8982f22e91599350aaa71f1be52a38205ba"
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
