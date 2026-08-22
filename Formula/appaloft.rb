class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.10.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.5/appaloft-v1.10.5-darwin-arm64.tar.gz"
      sha256 "91b7f0812686c55bf9d24ff1bb57f963626f14d46bc1fbcf365701df610f8466"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.5/appaloft-v1.10.5-darwin-x64.tar.gz"
      sha256 "6bb19ee739760b15784cf62dfb6999a77da3c5e4cb342924100a9b04f3646d9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.5/appaloft-v1.10.5-linux-arm64-gnu.tar.gz"
      sha256 "1044b84832c3c871b28a9d846087f04bd1225409eb25426065b1faf3e3b22152"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.5/appaloft-v1.10.5-linux-x64-gnu.tar.gz"
      sha256 "231b16c19e851b865ace48bf9ea76609a76770f03bbd2404be8f7c65a6d9c656"
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
