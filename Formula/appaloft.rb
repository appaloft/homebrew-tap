class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.12.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.3/appaloft-v0.12.3-darwin-arm64.tar.gz"
      sha256 "f08736b0e318e756900d45f17f15173faabb887ece07be5b1f8cf56f66eb55af"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.3/appaloft-v0.12.3-darwin-x64.tar.gz"
      sha256 "aefacf87e95a21fdcd9ebb6cb4d785a59293e6c0633d58a609c2889ce670f364"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.3/appaloft-v0.12.3-linux-arm64-gnu.tar.gz"
      sha256 "64dc2e8972b469fb6f4315e0bca6e8309509de8625aa5fa2275f8bbb13bb2694"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.3/appaloft-v0.12.3-linux-x64-gnu.tar.gz"
      sha256 "aac61f2a02a01a073e7579c1ae131a5112bd5dc95c9b6a12c143b23f75c8fb42"
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
