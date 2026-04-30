class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.7.0/appaloft-v0.7.0-darwin-arm64.tar.gz"
      sha256 "9d744301396a5bedd6c7708c7500aa2b776b9a1724ad187348febfc5edf4759e"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.7.0/appaloft-v0.7.0-darwin-x64.tar.gz"
      sha256 "0db94cdae747346ef65bde7a2179e3496323b67403589301488042b86a141253"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.7.0/appaloft-v0.7.0-linux-arm64-gnu.tar.gz"
      sha256 "b3f43539cfdcd5de6abb1bb8ee6ffd87e68f54c885bab69eb03a7c016fd7cc30"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.7.0/appaloft-v0.7.0-linux-x64-gnu.tar.gz"
      sha256 "c3590ec70a9d090d5927b1d5c81bd7d5f7fb952bbd9c601943a54fb5c3b60190"
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
