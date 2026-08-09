class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.0/appaloft-v1.8.0-darwin-arm64.tar.gz"
      sha256 "7a3336a12110127eca9dfb4acac686c9448b9d689a408c14adec636692115c82"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.0/appaloft-v1.8.0-darwin-x64.tar.gz"
      sha256 "223a79daa794bae2b40d2b4918171d7f4328ab6136a5bb2be27e176b431f0e8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.0/appaloft-v1.8.0-linux-arm64-gnu.tar.gz"
      sha256 "9fbb2a8fc17d571f608b6d927d59cbcd87ce9faf431a8d14d1c0da02958d979a"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.0/appaloft-v1.8.0-linux-x64-gnu.tar.gz"
      sha256 "986081e8af13c1daad608b95e0aa2cda3c8fc5f9b69c8c76b5c1f2520a1b8445"
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
