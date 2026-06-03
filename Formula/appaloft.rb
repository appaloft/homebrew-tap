class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.16/appaloft-v1.0.0-rc.16-darwin-arm64.tar.gz"
      sha256 "496041490040b6eb54bcb45fd0bf7059c40573db949c1dafacfeb9a1e71e8623"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.16/appaloft-v1.0.0-rc.16-darwin-x64.tar.gz"
      sha256 "251f7fcd79babcfe195dfb7f3c3a1b344d2921dc02c9cbfe7fb1e32feb598797"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.16/appaloft-v1.0.0-rc.16-linux-arm64-gnu.tar.gz"
      sha256 "24f6c3f21c5ff4dd10076645eba53ebed15d94580e63a36d0e4f00f04b35269d"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.16/appaloft-v1.0.0-rc.16-linux-x64-gnu.tar.gz"
      sha256 "eac53b84c1ab403033ac9890b34036f7ac1aca578d0651c2deb8bc2d5533d560"
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
