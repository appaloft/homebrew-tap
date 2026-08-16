class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.8.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.4/appaloft-v1.8.4-darwin-arm64.tar.gz"
      sha256 "3b9152643ba9db39e49136563ffd2ebdb0b0824631ae48aa6247cea42da149f4"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.4/appaloft-v1.8.4-darwin-x64.tar.gz"
      sha256 "9e5410581e37a008514de3067c86cc1a6ee9e7d81559e0ee38b93cfdfd83f61e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.4/appaloft-v1.8.4-linux-arm64-gnu.tar.gz"
      sha256 "0f8a4a3e11ca78ebb4e91e8f2759d5740977b935279bc969d279ebc443e4a319"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.4/appaloft-v1.8.4-linux-x64-gnu.tar.gz"
      sha256 "ad18e63a16b67b0610061ca95e092299707419e273394e0fe103b773e9f9f6ac"
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
