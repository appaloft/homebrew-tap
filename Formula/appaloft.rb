class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.9.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.7/appaloft-v0.9.7-darwin-arm64.tar.gz"
      sha256 "736b3ceac169aa228e74f3db92d030fe2e410928acd79ec4413f49f05b2e476a"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.7/appaloft-v0.9.7-darwin-x64.tar.gz"
      sha256 "1283adfd0cb669d8970debefd87265dd31d61686e8a93867345f7a3c33724f8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.7/appaloft-v0.9.7-linux-arm64-gnu.tar.gz"
      sha256 "20f33b201a2220023e35912b1e676c85edf127ae74f1a4afafbcdf9ae84ce6d2"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.7/appaloft-v0.9.7-linux-x64-gnu.tar.gz"
      sha256 "46a07fe0f64782f33a2a9660d5dec28556ff9ea7e2dd4dc8e6d3f6d8b477855d"
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
