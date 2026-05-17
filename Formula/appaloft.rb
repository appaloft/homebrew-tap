class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.5/appaloft-v1.0.0-rc.5-darwin-arm64.tar.gz"
      sha256 "b5545ab9326418b6ddda444fcff2e8037b18e690b71eea87cf69880db6e4e8a1"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.5/appaloft-v1.0.0-rc.5-darwin-x64.tar.gz"
      sha256 "ecd9d9d3f9ba5a46eb76c1c1c29e1fe11ff582817830f6f12a80112b60a6cc2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.5/appaloft-v1.0.0-rc.5-linux-arm64-gnu.tar.gz"
      sha256 "78ce17f71b285fd70282f69b02afe31d614316f2e2a56343dfd39f373ec9e5bd"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.5/appaloft-v1.0.0-rc.5-linux-x64-gnu.tar.gz"
      sha256 "4c96f208098b6a6cc6f235d32b2f553f4b9b0299277bdbf86d8b8af4799cc6ba"
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
