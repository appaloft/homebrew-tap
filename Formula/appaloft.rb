class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.17/appaloft-v1.0.0-rc.17-darwin-arm64.tar.gz"
      sha256 "2ac0e70ce6ad8496cd8433d6a810312da44d441e36581f35f7234354a9f98c3f"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.17/appaloft-v1.0.0-rc.17-darwin-x64.tar.gz"
      sha256 "9443ee0d9242dc71f66c4352f42e8eaf7b755a0adbc8896e9c86f1a073568abf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.17/appaloft-v1.0.0-rc.17-linux-arm64-gnu.tar.gz"
      sha256 "e5f5d535bfaabeb27353e3cf132153810281dbdd6398bdc7c412ba02850ab905"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.17/appaloft-v1.0.0-rc.17-linux-x64-gnu.tar.gz"
      sha256 "bd996f227ea6d2445251b70736079a28862101a8d692b85626d8ba068c7782ac"
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
