class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.8.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.8/appaloft-v1.8.8-darwin-arm64.tar.gz"
      sha256 "2fad4628534c3d1e410e388e37e6acbec6358144c3561076b00f60917fe33893"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.8/appaloft-v1.8.8-darwin-x64.tar.gz"
      sha256 "b962f730f2f49f413b56a7e62574ee97e4f7b7dc0ab22089f34f74dc4fead870"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.8/appaloft-v1.8.8-linux-arm64-gnu.tar.gz"
      sha256 "246d1679d64d65c7fd20eda3e5434a303f88883ab7393f436bc129c1bc68e611"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.8/appaloft-v1.8.8-linux-x64-gnu.tar.gz"
      sha256 "772b613c9cd0aae2e3f2d7d92d4b84ea5fcc3a9d130ad0afaffcdf63376b7102"
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
